import { describe, it, expect, beforeEach } from 'vitest';
import { XmiSpecComplianceRule } from './XmiSpecComplianceRule';
import { ValidationSession } from '../engine/ValidationSession';

describe('XmiSpecComplianceRule', () => {
    let rule: XmiSpecComplianceRule;
    let session: ValidationSession;

    beforeEach(() => {
        rule = new XmiSpecComplianceRule();
        session = new ValidationSession();
    });

    it('should detect duplicate xmi:id', async () => {
        const xmi = `
            <xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/2.5.1">
                <element xmi:id="duplicate"/>
                <element xmi:id="duplicate"/>
            </xmi:XMI>
        `;
        await session.registerFiles([{ name: 'test.xmi', content: xmi }]);
        rule.validate(session);
        
        expect(session.errors.some(e => e.includes('Duplicate xmi:id'))).toBe(true);
    });

    it('should detect invalid NCName IDs', async () => {
        const xmi = `
            <xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/2.5.1">
                <element xmi:id="123invalid"/>
                <element xmi:id="space in id"/>
            </xmi:XMI>
        `;
        await session.registerFiles([{ name: 'test.xmi', content: xmi }]);
        rule.validate(session);
        
        expect(session.errors.filter(e => e.toLowerCase().includes('ncname')).length).toBe(2);
    });

    it('should detect broken references', async () => {
        const xmi = `
            <xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/2.5.1">
                <element xmi:id="valid" ref="missing"/>
            </xmi:XMI>
        `;
        await session.registerFiles([{ name: 'test.xmi', content: xmi }]);
        rule.validate(session);
        
        expect(session.errors.some(e => e.includes('Broken reference') && e.includes('at line'))).toBe(true);
    });

    it('should accept valid XMI', async () => {
        const xmi = `
            <xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/2.5.1">
                <element xmi:id="id1" ref="id2"/>
                <element xmi:id="id2"/>
            </xmi:XMI>
        `;
        await session.registerFiles([{ name: 'test.xmi', content: xmi }]);
        rule.validate(session);
        
        expect(session.errors.length).toBe(0);
    });

    it('should report error for empty XMI', async () => {
        const xmi = `   `;
        await session.registerFiles([{ name: 'empty.xmi', content: xmi }]);
        rule.validate(session);
        
        expect(session.errors.some(e => e.includes('document is empty'))).toBe(true);
    });
});
