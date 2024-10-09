"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const stream_1 = require("stream");
const bsplit = require("buffer-split");
const buffer_1 = require("buffer");
const LINE_REGEX = /([0-9]+):\s+proc\s+([0-9]+)\s+\((.*):([0-9]+)\)\s+(.*):([0-9]+)\s+\(state\s+([0-9]+)\)/;
const QUEUE_REGEX = /queue\s+([0-9]+)\s+\((.*)\):\s+((\[.*?\])*)/;
const ASSIGN_REGEX = /\s*(.*)\s+=\s+(.*)/;
const LOCAL_REGEX = /\s*.*\([0-9]+\):(.*)/;
class SpinOutputParser extends stream_1.Transform {
    constructor() {
        super();
        this._buffer = new buffer_1.Buffer(0);
        this._currentStep = null;
        this['_writableState'].objectMode = false; // buffer input
        this['_readableState'].objectMode = true; // object output
    }
    _processBuffer() {
        const buffers = bsplit(this._buffer, new buffer_1.Buffer('\n'), true);
        this._buffer = buffers[buffers.length - 1];
        for (const bufferLine of buffers) {
            const line = bufferLine.toString();
            if (this._currentStep !== null) {
                if (!line.trim()) { // empty line
                    this.push(this._currentStep); // push the step
                    this._currentStep = null;
                }
                else if (line.trim().startsWith('spin:')) {
                    this._currentStep.rawOutput += line;
                }
                else if (this._currentStep.error) {
                    this.push(this._currentStep); // push the error step
                    this._currentStep = null;
                    this.end(); // close stream on error
                    break;
                }
                else { // parse a data line
                    this._currentStep.rawOutput += line;
                    const updates = this._currentStep.updates;
                    const queueMatch = line.match(QUEUE_REGEX);
                    if (queueMatch !== null) {
                        const [, queue, variable, data] = queueMatch;
                        const values = data.split(']').filter(x => x).map(s => s.slice(1));
                        updates.queues[parseInt(queue, 10)] = values;
                        if (variable.match(LOCAL_REGEX)) {
                            const key = variable.split(':')[1].trim();
                            updates.local[key] = values;
                        }
                        else {
                            updates.global[variable.trim()] = values;
                        }
                    }
                    const assigMatch = line.match(ASSIGN_REGEX);
                    if (assigMatch !== null) {
                        const [, variable, value] = assigMatch;
                        if (variable.match(LOCAL_REGEX)) {
                            const key = variable.split(':')[1].trim();
                            updates.local[key] = value;
                        }
                        else {
                            updates.global[variable.trim()] = value;
                        }
                    }
                }
            }
            else if (line.trim() === '-------------') {
                this.end(); // close stream at end mark
                break;
            }
            else if (line.trim().startsWith('spin:')) {
                if (line.toLowerCase().includes('error')) {
                    const matches = line.match(/spin:\s+(.*):([0-9]+)/);
                    if (matches !== null) {
                        this._currentStep = {
                            program: matches[1].trim(),
                            line: parseInt(matches[2], 10),
                            rawOutput: line,
                            error: true
                        };
                    }
                }
            }
            else { // parse a step description line
                const matches = line.match(LINE_REGEX);
                if (matches === null) {
                    continue;
                }
                const [, step, proc, procName, procID, program, programLine, state] = matches;
                this._currentStep = {
                    step: parseInt(step, 10),
                    proc: parseInt(proc, 10),
                    procName,
                    procID: parseInt(procID, 10),
                    program,
                    line: parseInt(programLine, 10),
                    state: parseInt(state),
                    updates: { queues: {}, local: {}, global: {} },
                    rawOutput: line,
                    error: false
                };
            }
        }
    }
    _flush(callback) {
        if (this._currentStep) {
            this.push(this._currentStep);
        }
        callback();
    }
    _transform(chunk, encoding, callback) {
        this._buffer = buffer_1.Buffer.concat([this._buffer, chunk]);
        this._processBuffer();
        callback();
    }
}
exports.default = SpinOutputParser;
//# sourceMappingURL=spinOutputParser.js.map