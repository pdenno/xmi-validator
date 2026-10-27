import type { ValidationSession } from './ValidationSession';
import type { HeaderMetadataResult } from './MetadataStandards';
import type { ElementCoverageStats } from '../rules/StereotypeDocumentationRule';

export interface RootCauseSummary {
    title: string;
    count: number;
    severity: 'ERROR' | 'WARNING';
    description: string;
    remedy: string;
    autoFixable: boolean;
    samples: string[];
}

export class ReportGenerator {
    public static generateMarkdown(session: ValidationSession, results: Map<string, any>): string {
        let md = `# XMI Validation Report\n\n`;
        md += `| Metadata | Value |\n`;
        md += `| :--- | :--- |\n`;
        md += `| **Date** | ${new Date().toLocaleString()} |\n`;
        md += `| **Files Processed** | ${results.size} |\n`;
        md += `| **Status** | ${this.getOverallStatus(results)} |\n\n`;

        for (const [fileName, data] of results.entries()) {
            md += `## File: ${fileName}\n\n`;

            const { proprietaryWarnings, docWarnings, versionWarnings, headerErrors, headerWarnings, elementStats, allErrors } = data;
            const pWarns = proprietaryWarnings || [];
            const dWarns = docWarnings || [];
            const vWarns = versionWarnings || [];
            const hErrs = headerErrors || [];
            const hWarns = headerWarnings || [];
            const errs = allErrors || [];

            // OMG Specification Header Audit Table
            if (data.headerMetadata) {
                const meta: HeaderMetadataResult = data.headerMetadata;
                md += `### OMG Machine-Readable Specification Header Audit\n\n`;
                md += `| Section | Metadata Item | Status | Standard Mapping (\`cmns-av\` / \`dcterms\`) |\n`;
                md += `| :--- | :--- | :--- | :--- |\n`;
                md += `| **A.1** | **Copyright** | ${meta.hasCopyright ? '✓ Pass' : '✗ MISSING (ERROR)'} | \`cmns-av:copyright\` / \`dcterms:rights\` |\n`;
                md += `| **A.2** | **License** | ${meta.hasLicense ? '✓ Pass' : '✗ MISSING (ERROR)'} | \`cmns-av:license\` / \`dcterms:license\` |\n`;
                md += `| **A.3** | **Specification Label** | ${meta.hasLabel ? '✓ Pass' : '✗ MISSING (ERROR)'} | \`cmns-av:directName\` / \`rdfs:label\` |\n`;
                md += `| **B.1** | **Abstract** | ${meta.hasAbstract ? '✓ Pass' : '⚠ Missing (Warning)'} | \`dcterms:abstract\` / \`cmns-av:explanatoryNote\` |\n`;
                md += `| **B.2** | **Contributors** | ${meta.hasContributors ? '✓ Pass' : '⚠ Missing (Warning)'} | \`cmns-av:contributor\` / \`dcterms:contributor\` |\n`;
                md += `| **B.3** | **Change Notes** | ${meta.hasChangeNotes ? '✓ Pass' : '⚠ Missing (Warning)'} | \`cmns-av:changeNote\` / \`skos:changeNote\` |\n`;
                md += `| **B.4** | **Explanatory / Additional Notes** | ${meta.hasAdditionalNotes ? '✓ Pass' : '⚠ Missing (Warning)'} | \`cmns-av:explanatoryNote\` / \`cmns-av:usageNote\` |\n`;
                md += `| **B.5** | **Creation Date** | ${meta.hasCreationDate ? `✓ Pass (${meta.creationDate})` : '⚠ Missing (Warning)'} | \`cmns-av:creationDate\` / \`dcterms:created\` |\n`;
                md += `| **B.6** | **Modification Date** | ${meta.hasModificationDate ? `✓ Pass (${meta.modificationDate})` : '⚠ Missing (Warning)'} | \`cmns-av:modificationDate\` / \`dcterms:modified\` |\n`;
                md += `| **B.7** | **Dependencies** | ${meta.hasDependencies ? '✓ Pass' : '⚠ Missing (Warning)'} | \`cmns-av:dependsOn\` / \`dcterms:requires\` |\n`;
                md += `| **B.8** | **Version Info & Links** | ${meta.hasVersionInfo ? '✓ Pass' : '⚠ Missing (Warning)'} | \`cmns-av:version\` / \`owl:versionIRI\` |\n`;
                md += `| **B.9** | **Specification Link** | ${meta.hasSpecificationLink ? `✓ Pass (${meta.specificationLink})` : '⚠ Missing (Warning)'} | \`cmns-av:isDefinedBy\` / \`rdfs:isDefinedBy\` |\n\n`;
            }

            // Element Annotation Quality & ISO 704 Stats
            if (elementStats) {
                const stats: ElementCoverageStats = elementStats;
                const docPct = stats.totalElements > 0 ? Math.round((stats.documentedElements / stats.totalElements) * 100) : 0;
                const isoPct = stats.documentedElements > 0 ? Math.round((stats.iso704CompliantElements / stats.documentedElements) * 100) : 0;

                md += `### First-Class Model Elements Metadata Coverage & ISO 704 Compliance\n\n`;
                md += `| Metric | Count | Percentage |\n`;
                md += `| :--- | :--- | :--- |\n`;
                md += `| **Total First-Class Elements** | ${stats.totalElements} | 100% |\n`;
                md += `| **Documented Elements (Section C.2)** | ${stats.documentedElements} | ${docPct}% |\n`;
                md += `| **ISO 704 Compliant Definitions** | ${stats.iso704CompliantElements} | ${isoPct}% of documented |\n`;
                md += `| **Explanatory Notes (Section D.1)** | ${stats.explanatoryNotesCount} | - |\n`;
                md += `| **Editorial Notes / TODOs (Section D.2)** | ${stats.editorialNotesCount} | - |\n`;
                md += `| **Usage Notes (Section D.3)** | ${stats.usageNotesCount} | - |\n`;
                md += `| **Sources for Definitions (Section D.4)** | ${stats.sourcesCount} | - |\n`;
                md += `| **Synonyms (Section D.5)** | ${stats.synonymsCount} | - |\n`;
                md += `| **Abbreviations (Section D.6)** | ${stats.abbreviationsCount} | - |\n`;
                md += `| **Symbols (Section D.7)** | ${stats.symbolsCount} | - |\n\n`;
            }

            if (errs.length === 0 && pWarns.length === 0 && dWarns.length === 0 && vWarns.length === 0 && hWarns.length === 0) {
                md += `> [!NOTE]\n`;
                md += `> ✓ **Validation Passed**: No structural or specification metadata issues found for this file.\n\n`;
                continue;
            }

            // Root Cause Analysis Section
            const rootCauses = this.analyzeRootCauses(errs, pWarns, dWarns, vWarns, hErrs, hWarns);
            if (rootCauses.length > 0) {
                md += `### Suspected Root Cause Summary\n\n`;
                md += `| Suspected Root Cause | Category | Issues | Severity | Auto-Fixable? | Recommended Action |\n`;
                md += `| :--- | :--- | :--- | :--- | :--- | :--- |\n`;
                rootCauses.forEach(rc => {
                    const fixStr = rc.autoFixable ? "✓ Yes (`--refactor`)" : "Manual modeling fix";
                    md += `| **${rc.title}** | ${rc.severity} | ${rc.count} | ${rc.severity} | ${fixStr} | ${rc.remedy} |\n`;
                });
                md += `\n`;

                md += `#### Root Cause Details & Analysis\n\n`;
                rootCauses.forEach(rc => {
                    md += `> [!${rc.severity === 'ERROR' ? 'IMPORTANT' : 'NOTE'}]\n`;
                    md += `> **${rc.title}** (${rc.count} issue${rc.count > 1 ? 's' : ''})\n`;
                    md += `> - **Diagnosis**: ${rc.description}\n`;
                    md += `> - **Remedy**: ${rc.remedy}\n\n`;
                });
            }

            if (errs.length > 0) {
                md += `### Structural UML Constraints (Errors)\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                errs.forEach((e: string) => md += `| ${e.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            if (hWarns.length > 0) {
                md += `### Specification Header Recommendations (Section B)\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                hWarns.forEach((w: string) => md += `| ${w.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            if (pWarns.length > 0) {
                md += `### Proprietary Extensions (Critical Warnings)\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                pWarns.forEach((w: string) => md += `| ${w.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            if (vWarns.length > 0) {
                md += `### Specification Version Warnings\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                vWarns.forEach((w: string) => md += `| ${w.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            if (dWarns.length > 0) {
                md += `### Documentation & ISO 704 Quality Warnings\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                dWarns.forEach((w: string) => md += `| ${w.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            md += `---\n\n`;
        }

        md += `\n*End of Report*\n`;
        return md;
    }

    public static analyzeRootCauses(
        allErrors: string[],
        proprietaryWarnings: string[],
        docWarnings: string[],
        versionWarnings: string[],
        headerErrors: string[] = [],
        headerWarnings: string[] = []
    ): RootCauseSummary[] {
        const map = new Map<string, RootCauseSummary>();

        const addIssue = (
            key: string,
            title: string,
            severity: 'ERROR' | 'WARNING',
            description: string,
            remedy: string,
            autoFixable: boolean,
            sample: string
        ) => {
            if (!map.has(key)) {
                map.set(key, {
                    title,
                    severity,
                    description,
                    remedy,
                    autoFixable,
                    count: 0,
                    samples: []
                });
            }
            const item = map.get(key)!;
            item.count++;
            if (item.samples.length < 3) {
                item.samples.push(sample);
            }
        };

        allErrors.forEach(err => {
            if (err.includes('Specification Header Violation')) {
                addIssue(
                    'hdr_violation',
                    'Missing Mandatory OMG Specification Header',
                    'ERROR',
                    'File lacks required specification metadata (Copyright, License, or Label) in <xmi:Documentation> header.',
                    'Run xmi-validator with `--refactor --inject-header-template` to inject an OMG compliant header template.',
                    true,
                    err
                );
            } else if (err.includes('Duplicate xmi:id found')) {
                addIssue(
                    'dup_id',
                    'EA Extension ID Collision',
                    'ERROR',
                    'Tool export reuses UML element xmi:id values inside <xmi:Extension> tags (e.g. <Sequence> elements), violating OMG XMI 2.5.1 / XML 1.0 ID uniqueness.',
                    'Run xmi-validator with `--refactor` to automatically disambiguate extension IDs.',
                    true,
                    err
                );
            } else if (err.includes('Broken reference')) {
                addIssue(
                    'broken_ref',
                    'Unresolved Primitive Types / Missing Standard Library Hrefs',
                    'ERROR',
                    'Model references standard primitive types (e.g. String, Integer, UnlimitedNatural) or profile types by bare string name without standard OMG PrimitiveTypes href references.',
                    'Run xmi-validator with `--refactor` to bind bare primitive names to standard OMG PrimitiveTypes package hrefs.',
                    true,
                    err
                );
            } else if (err.includes('Invalid xmi:id format')) {
                addIssue(
                    'invalid_id_format',
                    'Non-NCName Colon-Containing Profile Stereotype IDs',
                    'ERROR',
                    'Profile extension elements contain double colons (::) in xmi:id attributes, violating W3C XML Namespaces NCName specifications.',
                    'Run xmi-validator with `--refactor` to sanitize colons into valid NCName underscores.',
                    true,
                    err
                );
            } else if (err.includes('referencing an Instance Specification')) {
                addIssue(
                    'instance_assoc_end',
                    'Association End Pointing to Instance Specification',
                    'ERROR',
                    'Connector / Association end targets an InstanceSpecification instead of a UML Classifier (Class/Interface), violating UML metamodel constraints.',
                    'Update model connections in modeling tool to target Classifiers or run refactoring to re-target associations.',
                    false,
                    err
                );
            } else if (err.includes("named as 'unnamed'") || err.includes("Element Label Violation")) {
                addIssue(
                    'unnamed_element',
                    'Placeholder or Unnamed Model Attribute',
                    'ERROR',
                    'Owned attributes or model elements exported with default placeholder name "unnamed".',
                    'Assign descriptive attribute names in the modeling tool.',
                    false,
                    err
                );
            } else {
                addIssue(
                    'generic_error',
                    'Other Structural Metamodel Violations',
                    'ERROR',
                    'Unclassified structural metamodel validation error.',
                    'Inspect detailed issue log for manual correction.',
                    false,
                    err
                );
            }
        });

        headerWarnings.forEach(warn => {
            addIssue(
                'hdr_warning',
                'Incomplete Specification Header Metadata',
                'WARNING',
                'Specification header is missing recommended metadata items (Abstract, Contributors, Dates, Dependencies, Version links, Specification URL).',
                'Add missing specification metadata fields in <xmi:Documentation> or model documentation.',
                false,
                warn
            );
        });

        proprietaryWarnings.forEach(warn => {
            addIssue(
                'prop_ext',
                'Proprietary Tool Extension Tags',
                'WARNING',
                'Model contains vendor-specific namespace extensions (<xmi:Extension extender="...">) or custom profiles.',
                'Use `--strip-extensions` option during refactoring for clean standard OMG XMI export.',
                true,
                warn
            );
        });

        docWarnings.forEach(warn => {
            if (warn.includes('ISO 704')) {
                addIssue(
                    'iso704_warning',
                    'ISO 704 Definition Quality Warning',
                    'WARNING',
                    'Element definition violates ISO 704 formatting guidelines (circular definition, meta-language, or placeholder).',
                    'Refine element definition to follow ISO 704 concise noun phrase structure.',
                    false,
                    warn
                );
            } else {
                addIssue(
                    'doc_warning',
                    'Missing Stereotype / Element Documentation',
                    'WARNING',
                    'Model element or stereotype lacks <ownedComment> documentation or description tags.',
                    'Add element documentation in the modeling tool.',
                    false,
                    warn
                );
            }
        });

        versionWarnings.forEach(warn => {
            addIssue(
                'version_warning',
                'Outdated Standard Specification Version',
                'WARNING',
                'Model uses outdated specification namespace or standard version.',
                'Migrate namespace headers to latest OMG XMI 2.5.1 / UML 2.5.1 URIs.',
                true,
                warn
            );
        });

        return Array.from(map.values()).sort((a, b) => b.count - a.count);
    }

    private static getOverallStatus(results: Map<string, any>): string {
        let totalIssues = 0;
        for (const data of results.values()) {
            const pWarns = data.proprietaryWarnings || [];
            const dWarns = data.docWarnings || [];
            const vWarns = data.versionWarnings || [];
            const hWarns = data.headerWarnings || [];
            const errs = data.allErrors || [];
            totalIssues += errs.length + pWarns.length + vWarns.length + dWarns.length + hWarns.length;
        }
        return totalIssues === 0 ? "PASSED" : `FAILED (${totalIssues} issues found)`;
    }
}
