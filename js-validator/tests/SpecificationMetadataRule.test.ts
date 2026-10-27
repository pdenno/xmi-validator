import { describe, it, expect } from 'vitest';
import { XmiParser } from '../src/engine/XmiParser';
import { SpecificationMetadataRule } from '../src/rules/SpecificationMetadataRule';
import { evaluateIso704Compliance } from '../src/engine/MetadataStandards';

describe('SpecificationMetadataRule', () => {
  it('detects missing header elements in minimal XMI', () => {
    const xml = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.5.1" xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20131001">
  <uml:Model xmi:id="m1" name="unnamed"/>
</xmi:XMI>`;

    const parser = new XmiParser();
    const rule = new SpecificationMetadataRule(parser);
    parser.parse(xml);
    rule.finalize();

    const errors = rule.getErrors();
    const warnings = rule.getWarnings();

    expect(errors.some(e => e.includes('Copyright'))).toBe(true);
    expect(errors.some(e => e.includes('License'))).toBe(true);
    expect(errors.some(e => e.includes('Label'))).toBe(true);
    expect(warnings.length).toBeGreaterThan(0);
  });

  it('passes when complete xmi:Documentation header is provided', () => {
    const xml = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.5.1" xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20131001">
  <xmi:Documentation exporter="TestTool" exporterVersion="1.0.0" notice="Copyright (c) 2026 OMG" license="https://www.omg.org/license" shortDescription="Specification Model" longDescription="Abstract description" contact="Contributors List" creationDate="2026-09-19" modificationDate="2026-09-19"/>
  <uml:Model xmi:id="m1" name="MySpecModel">
    <packageImport xmi:id="pi1" href="http://www.omg.org/spec/UML/20131001/PrimitiveTypes.xmi"/>
    <ownedComment xmi:type="uml:Comment" xmi:id="c1" body="Specification Link: https://www.omg.org/spec/MY-SPEC/1.0/"/>
  </uml:Model>
</xmi:XMI>`;

    const parser = new XmiParser();
    const rule = new SpecificationMetadataRule(parser);
    parser.parse(xml);
    rule.finalize();

    const errors = rule.getErrors();
    expect(errors).toHaveLength(0);
    expect(rule.getMetadataResult().hasCopyright).toBe(true);
    expect(rule.getMetadataResult().hasLicense).toBe(true);
    expect(rule.getMetadataResult().hasLabel).toBe(true);
  });

  it('evaluates ISO 704 compliance correctly', () => {
    const valid = evaluateIso704Compliance('Account', 'Record of financial transactions associated with an entity.');
    expect(valid.isCompliant).toBe(true);

    const circular = evaluateIso704Compliance('Account', 'An account.');
    expect(circular.isCompliant).toBe(false);
    expect(circular.issues[0]).toContain('Circular definition');

    const meta = evaluateIso704Compliance('Customer', 'This class represents a customer in the system.');
    expect(meta.isCompliant).toBe(false);
    expect(meta.issues[0]).toContain('ISO 704 Violation');
  });
});
