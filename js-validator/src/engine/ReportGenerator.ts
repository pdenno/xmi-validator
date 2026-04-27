import type { ValidationSession } from './ValidationSession';

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
            
            const { proprietaryWarnings, docWarnings, versionWarnings, allErrors } = data;
            
            if (allErrors.length === 0 && proprietaryWarnings.length === 0 && docWarnings.length === 0 && versionWarnings.length === 0) {
                md += `> [!NOTE]\n`;
                md += `> ✓ **Validation Passed**: No issues found for this file.\n\n`;
                continue;
            }

            if (allErrors.length > 0) {
                md += `### Structural UML Constraints (Errors)\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                allErrors.forEach((e: string) => md += `| ${e.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            if (proprietaryWarnings.length > 0) {
                md += `### Proprietary Extensions (Critical Warnings)\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                proprietaryWarnings.forEach((w: string) => md += `| ${w.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            if (versionWarnings.length > 0) {
                md += `### Specification Version Warnings\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                versionWarnings.forEach((w: string) => md += `| ${w.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }

            if (docWarnings.length > 0) {
                md += `### Documentation Warnings\n\n`;
                md += `| Issue Description |\n`;
                md += `| :--- |\n`;
                docWarnings.forEach((w: string) => md += `| ${w.replace(/\|/g, '\\|')} |\n`);
                md += `\n`;
            }
            
            md += `---\n\n`;
        }

        md += `\n*End of Report*\n`;
        return md;
    }

    private static getOverallStatus(results: Map<string, any>): string {
        let totalIssues = 0;
        for (const data of results.values()) {
            totalIssues += data.allErrors.length + data.proprietaryWarnings.length + data.versionWarnings.length + data.docWarnings.length;
        }
        return totalIssues === 0 ? "PASSED" : `FAILED (${totalIssues} issues found)`;
    }
}
