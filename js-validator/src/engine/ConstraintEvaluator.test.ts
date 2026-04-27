import { describe, it, expect } from 'vitest';
import { XmiParser } from './XmiParser';
import { ConstraintEvaluator } from './ConstraintEvaluator';
import { coreUmlConstraints } from '../rules/UmlConstraints';

describe('Constraint Evaluator', () => {
  it('should enforce ported Actor must_have_name constraint', () => {
    const parser = new XmiParser();
    const evaluator = new ConstraintEvaluator(parser, coreUmlConstraints);

    const mockXmi = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20131001">
  <uml:Actor xmi:id="1" />
  <uml:Actor xmi:id="2" name="ValidActor" />
</xmi:XMI>`;

    parser.parse(mockXmi);
    
    const errors = evaluator.getErrors();
    expect(errors).toHaveLength(1);
    expect(errors[0]).toContain('must_have_name');
    expect(errors[0]).toContain('line 3');
  });
});
