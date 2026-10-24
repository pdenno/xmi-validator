import { describe, it } from 'vitest';
import * as fs from 'fs';
import * as path from 'path';
import { ValidationSession } from '../engine/ValidationSession';
import { XmiParser } from '../engine/XmiParser';
import { ConstraintEvaluator } from '../engine/ConstraintEvaluator';
import { generatedUmlConstraints } from '../rules/GeneratedUmlConstraints';
import { ToolSpecificExtensionRule } from '../rules/ToolSpecificExtensionRule';
import { StereotypeDocumentationRule } from '../rules/StereotypeDocumentationRule';
import { OutdatedStandardReferenceRule } from '../rules/OutdatedStandardReferenceRule';
import { UmlConsistencyRule } from '../rules/UmlConsistencyRule';
import { XmiSpecComplianceRule } from '../rules/XmiSpecComplianceRule';
import { ReportGenerator } from '../engine/ReportGenerator';

describe('RAMML Files Validation CLI Runner', () => {
    it('should validate all files in the RAMML directory', async () => {
        const targetPath = 'E:\\_Documents\\_OMG\\AB Homework\\_Q2_26_Chicago\\RAMML';
        const absolutePath = path.resolve(targetPath);
        
        console.log(`\n======================================================`);
        console.log(`Starting Stateless XMI Validation (Vitest Runner)...`);
        console.log(`Target Path: ${absolutePath}`);
        console.log(`======================================================\n`);

        if (!fs.existsSync(absolutePath)) {
            console.error(`Error: Path does not exist: ${absolutePath}`);
            throw new Error(`Path does not exist: ${absolutePath}`);
        }

        let filesToValidate: { name: string; path: string }[] = [];

        const stat = fs.statSync(absolutePath);
        if (stat.isDirectory()) {
            const files = fs.readdirSync(absolutePath);
            for (const file of files) {
                if (file.toLowerCase().endsWith('.xmi') || file.toLowerCase().endsWith('.xml')) {
                    filesToValidate.push({
                        name: file,
                        path: path.join(absolutePath, file)
                    });
                }
            }
        } else {
            filesToValidate.push({
                name: path.basename(absolutePath),
                path: absolutePath
            });
        }

        if (filesToValidate.length === 0) {
            console.log(`No .xmi or .xml files found to validate.`);
            return;
        }

        console.log(`Found ${filesToValidate.length} file(s) to validate:\n`);
        filesToValidate.forEach(f => console.log(`  - ${f.name}`));
        console.log(`\nLoading file content and starting Pass 1 (Global Session Registration)...`);

        const fileData = filesToValidate.map(f => {
            const content = fs.readFileSync(f.path, 'utf-8');
            return { name: f.name, content };
        });

        const session = new ValidationSession();
        await session.registerFiles(fileData);

        console.log(`Pass 1 complete. Registered all global nodes.`);
        console.log(`Starting Pass 2 (Rule execution)...`);

        const sessionResults = new Map<string, any>();

        for (const item of fileData) {
            const { name, content } = item;
            console.log(`\nValidating file: ${name}...`);

            try {
                const parser = new XmiParser();
                const evaluator = new ConstraintEvaluator(parser, generatedUmlConstraints, session);
                const toolRule = new ToolSpecificExtensionRule(parser);
                const docRule = new StereotypeDocumentationRule(parser);
                const outdatedRefRule = new OutdatedStandardReferenceRule(parser);
                const consistencyRule = new UmlConsistencyRule(parser, session);
                const xmiSpecRule = new XmiSpecComplianceRule();

                parser.parse(content);
                xmiSpecRule.validate(session);

                const results = {
                    xmiSpecErrors: [...session.errors],
                    proprietaryWarnings: toolRule.getWarnings(),
                    docWarnings: docRule.getWarnings(),
                    versionWarnings: outdatedRefRule.getWarnings(),
                    consistencyErrors: consistencyRule.getErrors(),
                    umlConstraints: evaluator.getErrors()
                };

                const allErrors = [...results.umlConstraints, ...results.consistencyErrors, ...results.xmiSpecErrors];
                sessionResults.set(name, { ...results, allErrors });

                const totalErrors = allErrors.length;
                const totalWarnings = results.proprietaryWarnings.length + results.docWarnings.length + results.versionWarnings.length;

                if (totalErrors === 0 && totalWarnings === 0) {
                    console.log(`  ✓ PASSED: 0 errors, 0 warnings.`);
                } else {
                    console.log(`  ✗ FAILED: ${totalErrors} error(s), ${totalWarnings} warning(s) found.`);
                    if (results.xmiSpecErrors.length > 0) {
                        console.log(`    - XMI Spec Errors: ${results.xmiSpecErrors.length}`);
                    }
                    if (results.umlConstraints.length > 0) {
                        console.log(`    - UML Constraints Errors: ${results.umlConstraints.length}`);
                    }
                    if (results.consistencyErrors.length > 0) {
                        console.log(`    - UML Consistency Errors: ${results.consistencyErrors.length}`);
                    }
                    if (results.proprietaryWarnings.length > 0) {
                        console.log(`    - Proprietary Warnings: ${results.proprietaryWarnings.length}`);
                    }
                    if (results.versionWarnings.length > 0) {
                        console.log(`    - Version Warnings: ${results.versionWarnings.length}`);
                    }
                    if (results.docWarnings.length > 0) {
                        console.log(`    - Doc Warnings: ${results.docWarnings.length}`);
                    }
                }
            } catch (err: any) {
                console.error(`  Error parsing/validating ${name}: ${err.message}`);
                sessionResults.set(name, {
                    xmiSpecErrors: [],
                    proprietaryWarnings: [],
                    docWarnings: [],
                    versionWarnings: [],
                    consistencyErrors: [],
                    umlConstraints: [],
                    allErrors: [err.message]
                });
            }
        }

        console.log(`\n======================================================`);
        console.log(`All files validated. Generating Markdown report...`);
        console.log(`======================================================`);

        const mdReport = ReportGenerator.generateMarkdown(session, sessionResults);
        
        const reportFileName = `validation-report.md`;
        const reportPath = path.join(absolutePath, reportFileName);
        fs.writeFileSync(reportPath, mdReport, 'utf-8');

        console.log(`\nReport generated successfully:`);
        console.log(`Path: ${reportPath}`);
        console.log(`\n======================================================`);
    });
});
