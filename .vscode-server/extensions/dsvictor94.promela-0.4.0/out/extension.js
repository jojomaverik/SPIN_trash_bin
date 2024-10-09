/*---------------------------------------------------------
 * Copyright (C) Microsoft Corporation. All rights reserved.
 *--------------------------------------------------------*/
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.deactivate = exports.activate = void 0;
const vscode = require("vscode");
const promelaSyntaxChecker_1 = require("./promelaSyntaxChecker");
function activate(context) {
    // register a configuration provider for 'mock' debug type
    context.subscriptions.push(vscode.debug.registerDebugConfigurationProvider("promela-debug", new MockConfigurationProvider()));
    // register a syntax problem provider
    const ws = vscode.workspace;
    const diag = vscode.languages.createDiagnosticCollection("promela");
    const promelaSyntaxChecker = new promelaSyntaxChecker_1.PromelaSyntaxChecker(diag);
    context.subscriptions.push(diag);
    ws.textDocuments.forEach((e) => {
        promelaSyntaxChecker.execute(e);
    });
    ws.onDidOpenTextDocument((e) => {
        promelaSyntaxChecker.execute(e);
    });
    ws.onDidSaveTextDocument((e) => {
        promelaSyntaxChecker.execute(e);
    });
    ws.onDidCloseTextDocument((e) => {
        diag.delete(e.uri);
    });
}
exports.activate = activate;
function deactivate() {
    // nothing to do
}
exports.deactivate = deactivate;
class MockConfigurationProvider {
    /**
     * Massage a debug configuration just before a debug session is being launched,
     * e.g. add all missing attributes to the debug configuration.
     */
    resolveDebugConfiguration(folder, config, token) {
        // if launch.json is missing or empty
        if (!config.type && !config.request && !config.name) {
            const editor = vscode.window.activeTextEditor;
            if (editor && editor.document.languageId === "promela") {
                config.type = "promela-debug";
                config.name = "Launch";
                config.request = "launch";
                config.program = "${file}";
                config.stopOnEntry = true;
            }
        }
        if (!config.program) {
            return vscode.window
                .showInformationMessage("Cannot find a program to debug")
                .then((_) => {
                return undefined; // abort launch
            });
        }
        if (!config.spin) {
            config.spin = vscode.workspace.getConfiguration('promela').get('spin', 'spin');
        }
        return config;
    }
}
//# sourceMappingURL=extension.js.map