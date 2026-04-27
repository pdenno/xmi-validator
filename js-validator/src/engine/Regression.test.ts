import { describe, it, expect, beforeEach } from 'vitest';
import * as fs from 'fs';
import * as path from 'path';
import { ValidationSession } from './ValidationSession';
import { XmiParser } from './XmiParser';
import { XmiSpecComplianceRule } from '../rules/XmiSpecComplianceRule';
import { UmlConsistencyRule } from '../rules/UmlConsistencyRule';
import { OutdatedStandardReferenceRule } from '../rules/OutdatedStandardReferenceRule';
import { ToolSpecificExtensionRule } from '../rules/ToolSpecificExtensionRule';
import { StereotypeDocumentationRule } from '../rules/StereotypeDocumentationRule';

describe('Regression Test Suite', () => {
    let session: ValidationSession;
    const samplesDir = path.resolve(__dirname, '../../tests/samples');

    beforeEach(() => {
        session = new ValidationSession();
    });

    async function runValidation(fileName: string, content: string) {
        // Pass 1: Global session registration
        await session.registerFiles([{ name: fileName, content }]);

        // Pass 2: Rule execution
        const specRule = new XmiSpecComplianceRule();
        specRule.validate(session);

        const parser = new XmiParser();
        const umlRule = new UmlConsistencyRule(parser, session);
        const outdatedRule = new OutdatedStandardReferenceRule(parser);
        const toolRule = new ToolSpecificExtensionRule(parser);
        const storyRule = new StereotypeDocumentationRule(parser);

        parser.parse(content);

        const allErrors = [
            ...session.errors,
            ...umlRule.getErrors(),
            ...parser.errors
        ];
        const allWarnings = [
            ...outdatedRule.getWarnings(),
            ...toolRule.getWarnings(),
            ...storyRule.getWarnings()
        ];

        return { errors: allErrors, warnings: allWarnings };
    }

    describe('Good Samples', () => {
        const goodDir = path.join(samplesDir, 'good');
        if (fs.existsSync(goodDir)) {
            const files = fs.readdirSync(goodDir).filter(f => f.endsWith('.xmi'));
            files.forEach(file => {
                it(`should validate ${file} without errors`, async () => {
                    const content = fs.readFileSync(path.join(goodDir, file), 'utf-8');
                    const result = await runValidation(file, content);
                    expect(result.errors).toHaveLength(0);
                });
            });
        }
    });

    describe('Bad Samples', () => {
        const badDir = path.join(samplesDir, 'bad');
        if (fs.existsSync(badDir)) {
            it('should detect duplicate IDs in duplicate-id.xmi', async () => {
                const content = fs.readFileSync(path.join(badDir, 'duplicate-id.xmi'), 'utf-8');
                const result = await runValidation('duplicate-id.xmi', content);
                expect(result.errors.some(e => e.includes('Duplicate xmi:id'))).toBe(true);
            });

            it('should detect broken references in broken-ref.xmi', async () => {
                const content = fs.readFileSync(path.join(badDir, 'broken-ref.xmi'), 'utf-8');
                const result = await runValidation('broken-ref.xmi', content);
                expect(result.errors.some(e => e.includes('Broken reference'))).toBe(true);
            });

            it('should detect invalid NCNames in invalid-ncname.xmi', async () => {
                const content = fs.readFileSync(path.join(badDir, 'invalid-ncname.xmi'), 'utf-8');
                const result = await runValidation('invalid-ncname.xmi', content);
                expect(result.errors.filter(e => e.includes('NCName')).length).toBeGreaterThanOrEqual(1);
            });

            it('should detect UML consistency errors in instance-spec-wrong.xmi', async () => {
                const content = fs.readFileSync(path.join(badDir, 'instance-spec-wrong.xmi'), 'utf-8');
                const result = await runValidation('instance-spec-wrong.xmi', content);
                expect(result.errors.some(e => e.includes('Instance Specification') && e.includes('ownedAttribute'))).toBe(true);
                expect(result.errors.some(e => e.includes('Literal Unlimited Natural'))).toBe(true);
            });

            it('should detect syntax errors in syntax-error.xmi', async () => {
                const content = fs.readFileSync(path.join(badDir, 'syntax-error.xmi'), 'utf-8');
                const result = await runValidation('syntax-error.xmi', content);
                expect(result.errors.length).toBeGreaterThan(0);
                expect(result.errors.some(e => e.toLowerCase().includes('unclosed') || e.toLowerCase().includes('unexpected'))).toBe(true);
            });

            it('should warn for undocumented elements in undocumented.xmi', async () => {
                const content = fs.readFileSync(path.join(badDir, 'undocumented.xmi'), 'utf-8');
                const result = await runValidation('undocumented.xmi', content);
                expect(result.warnings.some(w => w.includes('lacks documentation'))).toBe(true);
                // class1 and block1 are undocumented, class2 is documented.
                expect(result.warnings.filter(w => w.includes('lacks documentation')).length).toBe(2);
            });
        }
    });
});
