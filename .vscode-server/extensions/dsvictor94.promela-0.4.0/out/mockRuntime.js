"use strict";
/*---------------------------------------------------------
 * Copyright (C) Microsoft Corporation. All rights reserved.
 *--------------------------------------------------------*/
Object.defineProperty(exports, "__esModule", { value: true });
exports.MockRuntime = void 0;
const events_1 = require("events");
const spinOutputParser_1 = require("./spinOutputParser");
const debugSession_1 = require("vscode-debugadapter/lib/debugSession");
const main_1 = require("vscode-debugadapter/lib/main");
/**
 * A Mock runtime with minimal debugger functionality.
 */
class MockRuntime extends events_1.EventEmitter {
    constructor() {
        super();
        this._threads = new Map([[-1, new debugSession_1.Thread(-1, "Main")]]);
        // the initial (and one and only) file we are 'debugging'
        this._verbose = false;
        this._variableHandles = new main_1.Handles();
        this._references = new Map();
        this._variables = new Map();
        this._spinParser = new spinOutputParser_1.default();
        this._steps = new Array();
        this._currentStep = -1;
        this._end = false;
        this._unfinishedRun = null;
        // maps from sourceFile to array of Mock breakpoints
        this._breakPoints = new Map();
        // since we want to send breakpoint events, we will assign an id to every event
        // so that the frontend can match events with breakpoints.
        this._breakpointId = 1;
    }
    get threads() {
        return this._threads;
    }
    /**
     * Start executing the given program.
     */
    start(spinOutput, stopOnEntry, verbose) {
        this._verbose = verbose;
        this._spinParser.on('data', (step) => {
            this._steps.push(step);
            if (this._unfinishedRun) {
                const { reverse, stepEvent } = this._unfinishedRun;
                this._unfinishedRun = null;
                this.run(reverse, stepEvent);
            }
        });
        this._spinParser.on('end', () => {
            this._end = true;
            if (this._unfinishedRun) {
                const { reverse, stepEvent } = this._unfinishedRun;
                this._unfinishedRun = null;
                this.run(reverse, stepEvent);
            }
        });
        spinOutput.pipe(this._spinParser);
        const [local, global, queues] = [
            this._variableHandles.create('local'),
            this._variableHandles.create('global'),
            this._variableHandles.create('queues')
        ];
        this._references.set(-1, [local, global, queues]);
        this._variables.set(local, new Map());
        this._variables.set(global, new Map());
        this._variables.set(queues, new Map());
        if (stopOnEntry) {
            // we step once
            this.step(false, 'stopOnEntry');
        }
        else {
            // we just start to run until we hit a breakpoint or an exception
            this.continue();
        }
    }
    /**
     * Continue execution to the end/beginning.
     */
    continue(reverse = false) {
        this.run(reverse, undefined);
    }
    /**
     * Step to the next/previous non empty line.
     */
    step(reverse = false, event = 'stopOnStep') {
        this.run(reverse, event);
    }
    /**
     * Returns a fake 'stacktrace' where every 'stackframe' is a word from the current line.
     */
    stack(startFrame, endFrame, threadId) {
        let frames = new Array();
        let st = this._currentStep;
        let level = 0;
        while (st >= 0 && level < endFrame) {
            const step = this._steps[st--];
            if (step.error || step.proc === threadId || threadId === -1) {
                level++;
                if (level >= startFrame) {
                    frames.push({
                        index: st + 1,
                        name: `state ${step.error ? 'error' : step.state}`,
                        file: step.program,
                        line: step.line
                    });
                }
            }
        }
        return {
            frames: frames,
            count: frames.length
        };
    }
    scopes(frameId) {
        return this._references.get(frameId);
    }
    variables(reference) {
        return new Array(...this._variables.get(reference).values());
    }
    /*
     * Set breakpoint in file with given line.
     */
    setBreakPoint(path, line) {
        const bp = { verified: false, line, id: this._breakpointId++ };
        let bps = this._breakPoints.get(path);
        if (!bps) {
            bps = new Array();
            this._breakPoints.set(path, bps);
        }
        bps.push(bp);
        this.verifyBreakpoints(path);
        return bp;
    }
    /*
     * Clear breakpoint in file with given line.
     */
    clearBreakPoint(path, line) {
        let bps = this._breakPoints.get(path);
        if (bps) {
            const index = bps.findIndex(bp => bp.line === line);
            if (index >= 0) {
                const bp = bps[index];
                bps.splice(index, 1);
                return bp;
            }
        }
        return undefined;
    }
    /*
     * Clear all breakpoints for file.
     */
    clearBreakpoints(path) {
        this._breakPoints.delete(path);
    }
    // private method
    /**
     * Run through the file.
     * If stepEvent is specified only run a single step and emit the stepEvent.
     */
    run(reverse = false, stepEvent) {
        if (reverse) {
            for (let sp = this._currentStep - 1; sp >= 0; sp--) {
                const step = this._steps[sp];
                if (this.fireEventsForStep(step, stepEvent)) {
                    this._currentStep = sp;
                    return;
                }
            }
            // no more steps: stop at first
            this._currentStep = 0;
            this.sendEvent('stopOnEntry');
        }
        else {
            for (let sp = this._currentStep + 1; sp < this._steps.length; sp++) {
                const step = this._steps[sp];
                if (!step.error && !this._threads.has(step.proc)) {
                    this._threads.set(step.proc, new debugSession_1.Thread(step.proc, `${step.procName}(${step.proc})`));
                }
                if (!this._references.has(sp)) {
                    const [local, global, queues] = [
                        this._variableHandles.create('local'),
                        this._variableHandles.create('global'),
                        this._variableHandles.create('queue')
                    ];
                    this._references.set(sp, [local, global, queues]);
                    const globalVars = new Map(this._variables.get(this._references.get(sp - 1)[1]));
                    this._variables.set(global, globalVars);
                    const queuesVars = new Map(this._variables.get(this._references.get(sp - 1)[2]));
                    this._variables.set(queues, queuesVars);
                    let lastSp = sp;
                    while (--lastSp !== -1 && this._steps[lastSp].proc !== step.proc) {
                        ;
                    }
                    const localVars = new Map(this._variables.get(this._references.get(lastSp)[0]));
                    this._variables.set(local, localVars);
                    if (!step.error) {
                        for (const name of Object.keys(step.updates.local)) {
                            localVars.set(name, new main_1.Variable(name, step.updates.local[name].toString()));
                        }
                        for (const name of Object.keys(step.updates.global)) {
                            globalVars.set(name, new main_1.Variable(name, step.updates.global[name].toString()));
                        }
                        for (const name of Object.keys(step.updates.queues)) {
                            queuesVars.set(name, new main_1.Variable(name, step.updates.queues[name].toString()));
                        }
                    }
                }
                if (this.fireEventsForStep(step, stepEvent)) {
                    this._currentStep = sp;
                    return true;
                }
            }
            if (this._end) {
                // no more lines: run to end
                this.sendEvent('end');
                this._end = true;
                return;
            }
            this._unfinishedRun = { reverse, stepEvent };
        }
    }
    verifyBreakpoints(path) {
        let bps = this._breakPoints.get(path);
        if (bps) {
            bps.forEach(bp => {
                if (!bp.verified) {
                    bp.verified = true;
                    this.sendEvent('breakpointValidated', bp);
                }
            });
        }
    }
    /**
     * Fire events if line has a breakpoint or the word 'exception' is found.
     * Returns true is execution needs to stop.
     */
    fireEventsForStep(step, stepEvent) {
        if (this._verbose || step.error) {
            this.sendEvent('output', step.rawOutput, step.program, step.line, 0);
        }
        if (step.error) {
            this.sendEvent('stopOnException', -1);
            return true;
        }
        // is there a breakpoint?
        const breakpoints = this._breakPoints.get(step.program);
        if (breakpoints) {
            const bps = breakpoints.filter(bp => bp.line === step.line);
            if (bps.length > 0) {
                // send 'stopped' event
                this.sendEvent('stopOnBreakpoint', step.proc !== undefined ? step.proc : -1);
                // the following shows the use of 'breakpoint' events to update properties of a breakpoint in the UI
                // if breakpoint is not yet verified, verify it now and send a 'breakpoint' update event
                if (!bps[0].verified) {
                    bps[0].verified = true;
                    this.sendEvent('breakpointValidated', bps[0]);
                }
                return true;
            }
        }
        // non-empty line
        if (stepEvent) {
            this.sendEvent(stepEvent, step.proc);
            return true;
        }
        // nothing interesting found -> continue
        return false;
    }
    sendEvent(event, ...args) {
        setImmediate(_ => {
            this.emit(event, ...args);
        });
    }
}
exports.MockRuntime = MockRuntime;
//# sourceMappingURL=mockRuntime.js.map