"use strict";
/*---------------------------------------------------------
 * Copyright (C) Microsoft Corporation. All rights reserved.
 *--------------------------------------------------------*/
Object.defineProperty(exports, "__esModule", { value: true });
const vscode_debugadapter_1 = require("vscode-debugadapter");
const path_1 = require("path");
const mockRuntime_1 = require("./mockRuntime");
const child_process_1 = require("child_process");
class MockDebugSession extends vscode_debugadapter_1.LoggingDebugSession {
    /**
     * Creates a new debug adapter that is used for one debug session.
     * We configure the default implementation of a debug adapter here.
     */
    constructor() {
        super("mock-debug.txt");
        // this debugger uses zero-based lines and columns
        this.setDebuggerLinesStartAt1(true);
        this.setDebuggerColumnsStartAt1(true);
        this._runtime = new mockRuntime_1.MockRuntime();
        // setup event handlers
        this._runtime.on('stopOnEntry', (threadId) => {
            this.sendEvent(new vscode_debugadapter_1.StoppedEvent('entry', threadId));
        });
        this._runtime.on('stopOnStep', (threadId) => {
            this.sendEvent(new vscode_debugadapter_1.StoppedEvent('step', threadId));
        });
        this._runtime.on('stopOnBreakpoint', (threadId) => {
            this.sendEvent(new vscode_debugadapter_1.StoppedEvent('breakpoint', threadId));
        });
        this._runtime.on('stopOnException', (threadId, exceptionText) => {
            const ev = new vscode_debugadapter_1.StoppedEvent('exception', threadId);
            ev.body.reason = exceptionText;
            this.sendEvent(ev);
        });
        this._runtime.on('breakpointValidated', (bp) => {
            this.sendEvent(new vscode_debugadapter_1.BreakpointEvent('changed', { verified: bp.verified, id: bp.id }));
        });
        this._runtime.on('output', (text, filePath, line, column) => {
            const e = new vscode_debugadapter_1.OutputEvent(`${text}\n`);
            e.body.source = this.createSource(filePath);
            e.body.line = this.convertDebuggerLineToClient(line);
            e.body.column = this.convertDebuggerColumnToClient(column);
            this.sendEvent(e);
        });
        this._runtime.on('end', () => {
            this._spinProcess.kill();
            this.sendEvent(new vscode_debugadapter_1.TerminatedEvent());
        });
    }
    /**
     * The 'initialize' request is the first request called by the frontend
     * to interrogate the features the debug adapter provides.
     */
    initializeRequest(response, args) {
        // since this debug adapter can accept configuration requests like 'setBreakpoint' at any time,
        // we request them early by sending an 'initializeRequest' to the frontend.
        // The frontend will end the configuration sequence by calling 'configurationDone' request.
        this.sendEvent(new vscode_debugadapter_1.InitializedEvent());
        // build and return the capabilities of this debug adapter:
        response.body = response.body || {};
        // the adapter implements the configurationDoneRequest.
        response.body.supportsConfigurationDoneRequest = true;
        // make VS Code to show a 'step back' button
        response.body.supportsStepBack = true;
        this.sendResponse(response);
    }
    launchRequest(response, args) {
        // make sure to 'Stop' the buffered logging if 'trace' is not set
        vscode_debugadapter_1.logger.setup(args.trace ? vscode_debugadapter_1.Logger.LogLevel.Verbose : vscode_debugadapter_1.Logger.LogLevel.Stop, false);
        const spinArgs = ['-p', '-s', '-r', '-X', '-v', `-n${args.seed || 123}`, '-l', '-g', `-u${args.stepLimit || 500}`, args.program];
        const spin = args.spin;
        this._spinProcess = child_process_1.spawn(spin, spinArgs);
        this.sendEvent(new vscode_debugadapter_1.OutputEvent(`${spin} ${spinArgs.join(' ')}\n`, 'info'));
        this._spinProcess.on('exit', (code, signal) => {
            this.sendEvent(new vscode_debugadapter_1.OutputEvent(`${spin} exit with ${code || signal}\n`, 'info'));
        });
        this._spinProcess.on('error', (err) => {
            this.sendEvent(new vscode_debugadapter_1.OutputEvent(`${spin} fail with ${err}`, 'error'));
        });
        // start the program in the runtime
        this._runtime.start(this._spinProcess.stdout, !!args.stopOnEntry, args.verbose !== false);
        this.sendResponse(response);
    }
    setBreakPointsRequest(response, args) {
        const path = args.source.path;
        const clientLines = args.lines || [];
        // clear all breakpoints for this file
        this._runtime.clearBreakpoints(path);
        // set and verify breakpoint locations
        const actualBreakpoints = clientLines.map(l => {
            let { verified, line, id } = this._runtime.setBreakPoint(path, this.convertClientLineToDebugger(l));
            const bp = new vscode_debugadapter_1.Breakpoint(verified, this.convertDebuggerLineToClient(line));
            bp.id = id;
            return bp;
        });
        // send back the actual breakpoint positions
        response.body = {
            breakpoints: actualBreakpoints
        };
        this.sendResponse(response);
    }
    threadsRequest(response) {
        response.body = {
            threads: new Array(...this._runtime.threads.values())
        };
        this.sendResponse(response);
    }
    stackTraceRequest(response, args) {
        const startFrame = typeof args.startFrame === 'number' ? args.startFrame : 0;
        const maxLevels = typeof args.levels === 'number' ? args.levels : 10;
        const endFrame = startFrame + maxLevels;
        const stk = this._runtime.stack(startFrame, endFrame, args.threadId);
        response.body = {
            stackFrames: stk.frames.map(f => new vscode_debugadapter_1.StackFrame(f.index, f.name, this.createSource(f.file), this.convertDebuggerLineToClient(f.line), this.convertDebuggerColumnToClient(3))),
            totalFrames: stk.count
        };
        this.sendResponse(response);
    }
    scopesRequest(response, args) {
        const scopes = new Array();
        const [local, global, queues] = this._runtime.scopes(args.frameId);
        scopes.push(new vscode_debugadapter_1.Scope("Global", global, false));
        scopes.push(new vscode_debugadapter_1.Scope("Queues", queues, false));
        scopes.push(new vscode_debugadapter_1.Scope("Local", local, false));
        response.body = {
            scopes: scopes
        };
        this.sendResponse(response);
    }
    variablesRequest(response, args) {
        let variables = this._runtime.variables(args.variablesReference);
        response.body = {
            variables
        };
        this.sendResponse(response);
    }
    continueRequest(response, args) {
        this._runtime.continue();
        this.sendResponse(response);
    }
    reverseContinueRequest(response, args) {
        this._runtime.continue(true);
        this.sendResponse(response);
    }
    stepInRequest(response, args) {
        this._runtime.step();
        this.sendResponse(response);
    }
    nextRequest(response, args) {
        this._runtime.step();
        this.sendResponse(response);
    }
    stepOutRequest(response, args) {
        this._runtime.step(true);
        this.sendResponse(response);
    }
    stepBackRequest(response, args) {
        this._runtime.step(true);
        this.sendResponse(response);
    }
    //---- helpers
    createSource(filePath) {
        return new vscode_debugadapter_1.Source(path_1.basename(filePath), this.convertDebuggerPathToClient(filePath), undefined, undefined, 'mock-adapter-data');
    }
}
vscode_debugadapter_1.DebugSession.run(MockDebugSession);
//# sourceMappingURL=mockDebug.js.map