"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.PromelaSyntaxChecker = void 0;
const vscode = require("vscode");
const os = require("os");
const path = require("path");
const fs = require("fs");
const cp = require("child_process");
const rimraf = require("rimraf");
function isFileUri(uri) {
    return uri.scheme === "file";
}
class PromelaSyntaxChecker {
    constructor(diagnostics) {
        this.diag = diagnostics;
    }
    execute(document, onComplete) {
        const config = vscode.workspace.getConfiguration("promela");
        if (document.languageId !== "promela" ||
            document.isUntitled ||
            !isFileUri(document.uri) ||
            config.get("spin") === null) {
            return;
        }
        const spinPath = config.get("spin", "spin");
        const fileName = document.fileName;
        const uri = document.uri;
        fs.mkdtemp(path.join(os.tmpdir(), 'promela-vscode-'), (err, tmpdir) => {
            if (err) {
                return;
            }
            const spinProcess = cp.spawn(spinPath, ["-a", fileName], {
                cwd: tmpdir,
            });
            const spinOut = [];
            spinProcess.stdout.on('data', (data) => { spinOut.push(data); });
            const spinErr = [];
            spinProcess.stderr.on('data', (data) => { spinErr.push(data); });
            spinProcess.on('exit', (code, signal) => {
                rimraf(tmpdir, (err) => { if (err) {
                    console.error(err);
                } });
                // extract the problems from output
                const diagnostics = [];
                const errLines = Buffer.concat(spinErr).toString('utf8').split('\n');
                for (const line of errLines) {
                    const found = line.match(/(.+):(\d+): error: (.*)/);
                    if (found) {
                        const linum = parseInt(found[2]);
                        const message = found[3].trim();
                        const range = new vscode.Range(linum - 1, 0, linum - 1, 0);
                        const diagnostic = new vscode.Diagnostic(range, message, vscode.DiagnosticSeverity.Error);
                        diagnostics.push(diagnostic);
                    }
                }
                const outLines = Buffer.concat(spinOut).toString('utf8').split('\n');
                for (const line of outLines) {
                    const found = line.match(/spin: (.+):(\d+), Error: ([^:]*)/);
                    if (found) {
                        const linum = parseInt(found[2]);
                        const error = found[3].trim();
                        const range = new vscode.Range(linum - 1, 0, linum - 1, Number.MAX_VALUE);
                        let message = error;
                        if (error.startsWith("syntax error")) {
                            message = "syntax error";
                        }
                        const diagnostic = new vscode.Diagnostic(range, message, vscode.DiagnosticSeverity.Error);
                        diagnostics.push(diagnostic);
                    }
                }
                this.diag.set(uri, diagnostics);
                if (onComplete !== undefined) {
                    onComplete();
                }
            });
            spinProcess.on('error', (error) => {
                vscode.window.showWarningMessage(`${spinPath} is not executable`, 'Configure spin path').then((item) => {
                    if (!item) {
                        return;
                    }
                    vscode.commands.executeCommand('workbench.action.openSettings', 'promela.spin');
                });
            });
        });
    }
}
exports.PromelaSyntaxChecker = PromelaSyntaxChecker;
//# sourceMappingURL=promelaSyntaxChecker.js.map