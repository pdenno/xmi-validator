import { describe, it, expect } from 'vitest';
import { XmiRefactorer } from './XmiRefactorer';

describe('XmiRefactorer', () => {
    it('should disambiguate duplicate xmi:id values inside <xmi:Extension>', () => {
        const inputXml = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.1" xmlns:xmi="http://schema.omg.org/spec/XMI/2.1" xmlns:uml="http://www.omg.org/spec/UML/20110701">
    <uml:Model xmi:id="model1" name="Model">
        <packagedElement xmi:type="uml:Message" xmi:id="EAID_123" name="query"/>
    </uml:Model>
    <xmi:Extension extender="Enterprise Architect">
        <elements>
            <Sequence xmi:id="EAID_123" start="A" end="B"/>
        </elements>
    </xmi:Extension>
</xmi:XMI>`;

        const res = XmiRefactorer.refactor(inputXml);
        expect(res.changesCount.duplicateIdsFixed).toBe(1);
        expect(res.content).toContain('Sequence xmi:id="EAID_123_ext_1"');
        expect(res.content).toContain('<packagedElement xmi:type="uml:Message" xmi:id="EAID_123"');
    });

    it('should sanitize non-NCName colon IDs in xmi:id and references', () => {
        const inputXml = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.1">
    <packagedElement xmi:id="EPProfile::abstract" name="abstract"/>
    <appliedStereotype idref="EPProfile::abstract"/>
</xmi:XMI>`;

        const res = XmiRefactorer.refactor(inputXml);
        expect(res.changesCount.ncNamesSanitized).toBe(1);
        expect(res.content).toContain('xmi:id="EPProfile__abstract"');
        expect(res.content).toContain('idref="EPProfile__abstract"');
    });

    it('should resolve missing primitive type references by injecting standard definitions', () => {
        const inputXml = `<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:id="model1" name="Model">
    <packagedElement xmi:type="uml:Class" xmi:id="c1" name="Test">
        <ownedAttribute name="attr" type="String"/>
    </packagedElement>
</uml:Model>`;

        const res = XmiRefactorer.refactor(inputXml);
        expect(res.changesCount.primitiveTypesResolved).toBeGreaterThan(0);
        expect(res.content).toContain('<packagedElement xmi:type="uml:PrimitiveType" xmi:id="String" name="String"/>');
    });

    it('should strip extensions when option is enabled', () => {
        const inputXml = `<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:id="model1" name="Model">
    <xmi:Extension extender="Enterprise Architect">
        <data>test</data>
    </xmi:Extension>
</uml:Model>`;

        const res = XmiRefactorer.refactor(inputXml, { stripExtensions: true });
        expect(res.changesCount.extensionsStripped).toBe(1);
        expect(res.content).not.toContain('<xmi:Extension');
    });
});
