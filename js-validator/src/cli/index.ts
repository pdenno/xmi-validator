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
import { SpecificationMetadataRule } from '../rules/SpecificationMetadataRule';
import { ReportGenerator } from '../engine/ReportGenerator';
import { XmiRefactorer } from '../engine/XmiRefactorer';

async function main() {
    const args = process.argv.slice(2);
    let targetPath: string | undefined;
    let shouldRefactor = false;
    let stripExtensions = false;
    let injectHeaderTemplate = false;
    let customOutputPath: string | undefined;

    for (let i = 0; i < args.length; i++) {
        const arg = args[i];
        if (arg === '--refactor' || arg === '--clean' || arg === '--fix') {
            shouldRefactor = true;
        } else if (arg === '--strip-extensions') {
            stripExtensions = true;
            shouldRefactor = true;
        } else if (arg === '--inject-header-template' || arg === '--add-header') {
            injectHeaderTemplate = true;
            shouldRefactor = true;
        } else if (arg === '-o' && i + 1 < args.length) {
            customOutputPath = args[++i];
        } else if (!arg.startsWith('-') && !targetPath) {
            targetPath = arg;
        }
    }

    if (!targetPath) {
        // Default to the RAMML homework directory if no path specified
        targetPath = 'E:\\_Documents\\_OMG\\AB Homework\\_Q2_26_Chicago\\RAMML';
    }

    const absolutePath = path.resolve(targetPath);
    console.log(`\n======================================================`);
    console.log(`Starting Stateless XMI Validation CLI...`);
    console.log(`Target Path: ${absolutePath}`);
    if (shouldRefactor) {
        console.log(`Refactoring Mode: ENABLED (stripExtensions: ${stripExtensions}, injectHeaderTemplate: ${injectHeaderTemplate})`);
    }
    console.log(`======================================================\n`);

    if (!fs.existsSync(absolutePath)) {
        console.error(`Error: Path does not exist: ${absolutePath}`);
        process.exit(1);
    }

    let filesToValidate: { name: string; path: string }[] = [];

    const stat = fs.statSync(absolutePath);
    if (stat.isDirectory()) {
        const files = fs.readdirSync(absolutePath);
        for (const file of files) {
            if (file.toLowerCase().endsWith('.xmi') || file.toLowerCase().endsWith('.xml')) {
                // Skip previously clean/refactored output files during directory scan
                if (file.toLowerCase().endsWith('-clean.xml') || file.toLowerCase().endsWith('-clean.xmi')) continue;
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
        process.exit(0);
    }

    console.log(`Found ${filesToValidate.length} file(s) to validate:\n`);
    filesToValidate.forEach(f => console.log(`  - ${f.name}`));
    console.log(`\nLoading file content and starting Pass 1 (Global Session Registration)...`);

    const fileData = filesToValidate.map(f => {
        const content = fs.readFileSync(f.path, 'utf-8');
        return { name: f.name, path: f.path, content };
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
            const specMetaRule = new SpecificationMetadataRule(parser);
            const outdatedRefRule = new OutdatedStandardReferenceRule(parser);
            const consistencyRule = new UmlConsistencyRule(parser, session);
            const xmiSpecRule = new XmiSpecComplianceRule();

            parser.parse(content);
            xmiSpecRule.validate(session);
            specMetaRule.finalize();

            const headerErrors = specMetaRule.getErrors();
            const headerWarnings = specMetaRule.getWarnings();
            const headerMetadata = specMetaRule.getMetadataResult();
            const elementStats = docRule.getStats();

            const results = {
                xmiSpecErrors: [...session.errors],
                headerErrors,
                headerWarnings,
                headerMetadata,
                elementStats,
                proprietaryWarnings: toolRule.getWarnings(),
                docWarnings: docRule.getWarnings(),
                docErrors: docRule.getErrors(),
                versionWarnings: outdatedRefRule.getWarnings(),
                consistencyErrors: consistencyRule.getErrors(),
                umlConstraints: evaluator.getErrors()
            };

            const allErrors = [...results.umlConstraints, ...results.consistencyErrors, ...results.xmiSpecErrors, ...results.docErrors, ...headerErrors];
            sessionResults.set(name, { ...results, allErrors });

            const totalErrors = allErrors.length;
            const totalWarnings = results.proprietaryWarnings.length + results.docWarnings.length + results.versionWarnings.length + headerWarnings.length;

            if (totalErrors === 0 && totalWarnings === 0) {
                console.log(`  ✓ PASSED: 0 errors, 0 warnings.`);
            } else {
                console.log(`  ✗ FAILED: ${totalErrors} error(s), ${totalWarnings} warning(s) found.`);
                if (headerErrors.length > 0) {
                    console.log(`    - Specification Header Errors: ${headerErrors.length}`);
                }
                if (results.xmiSpecErrors.length > 0) {
                    console.log(`    - XMI Spec Errors: ${results.xmiSpecErrors.length}`);
                }
                if (results.docErrors.length > 0) {
                    console.log(`    - Doc Errors: ${results.docErrors.length}`);
                }
                if (results.umlConstraints.length > 0) {
                    console.log(`    - UML Constraints Errors: ${results.umlConstraints.length}`);
                }
                if (results.consistencyErrors.length > 0) {
                    console.log(`    - UML Consistency Errors: ${results.consistencyErrors.length}`);
                }
                if (headerWarnings.length > 0) {
                    console.log(`    - Header Warnings: ${headerWarnings.length}`);
                }
                if (results.proprietaryWarnings.length > 0) {
                    console.log(`    - Proprietary Warnings: ${results.proprietaryWarnings.length}`);
                }
                if (results.versionWarnings.length > 0) {
                    console.log(`    - Version Warnings: ${results.versionWarnings.length}`);
                }
                if (results.docWarnings.length > 0) {
                    console.log(`    - Doc & ISO 704 Warnings: ${results.docWarnings.length}`);
                }

                // Output Suspected Root Causes to stdout
                const rootCauses = ReportGenerator.analyzeRootCauses(
                    allErrors,
                    results.proprietaryWarnings,
                    results.docWarnings,
                    results.versionWarnings,
                    headerErrors,
                    headerWarnings
                );

                if (rootCauses.length > 0) {
                    console.log(`\n  Suspected Root Causes Identified:`);
                    rootCauses.forEach(rc => {
                        console.log(`    • ${rc.title} (${rc.count} issue${rc.count > 1 ? 's' : ''}) - Auto-Fixable: ${rc.autoFixable ? 'Yes' : 'No'}`);
                    });
                }
            }

            // Perform Refactoring if requested
            if (shouldRefactor) {
                console.log(`\n  [Refactor Engine] Processing ${name}...`);
                const refactorRes = XmiRefactorer.refactor(content, {
                    stripExtensions,
                    injectHeaderTemplate,
                    fixDuplicateExtensionIds: true,
                    sanitizeNcNames: true,
                    resolvePrimitiveTypes: true
                });

                const ext = path.extname(item.path);
                const base = path.basename(item.path, ext);
                const outPath = customOutputPath 
                    ? customOutputPath 
                    : path.join(path.dirname(item.path), `${base}-clean${ext}`);

                fs.writeFileSync(outPath, refactorRes.content, 'utf-8');

                console.log(`  ✓ Refactored XMI saved to: ${outPath}`);
                if (refactorRes.changesCount.headersInjected > 0) {
                    console.log(`    - OMG Specification Header Injected: ${refactorRes.changesCount.headersInjected}`);
                }
                console.log(`    - Extension Duplicate IDs Fixed: ${refactorRes.changesCount.duplicateIdsFixed}`);
                console.log(`    - NCName Colons Sanitized: ${refactorRes.changesCount.ncNamesSanitized}`);
                console.log(`    - Primitive Types Resolved: ${refactorRes.changesCount.primitiveTypesResolved}`);
                if (stripExtensions) {
                    console.log(`    - Proprietary Extension Blocks Stripped: ${refactorRes.changesCount.extensionsStripped}`);
                }
            }

        } catch (err: any) {
            console.error(`  Error parsing/validating ${name}: ${err.message}`);
            sessionResults.set(name, {
                xmiSpecErrors: [],
                headerErrors: [],
                headerWarnings: [],
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
    
    const reportFileName = `validation-report-${Date.now()}.md`;
    const reportPath = stat.isDirectory() ? path.join(absolutePath, reportFileName) : path.join(path.dirname(absolutePath), reportFileName);
    fs.writeFileSync(reportPath, mdReport, 'utf-8');

    console.log(`\nReport generated successfully:`);
    console.log(`Path: ${reportPath}`);
    console.log(`\n======================================================`);
}

main().catch(err => {
    console.error(`Fatal error during CLI execution:`, err);
    process.exit(1);
});
