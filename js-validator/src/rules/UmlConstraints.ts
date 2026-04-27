import type { XmiNode } from '../engine/XmiParser';
import type { SaxesAttribute } from 'saxes';

export interface ConstraintResult {
  ruleName: string;
  passed: boolean;
  message?: string;
}

export interface ConstraintDefinition {
  targetType: string;
  ruleName: string;
  evaluate: (node: XmiNode, context?: any) => ConstraintResult;
}

export const coreUmlConstraints: ConstraintDefinition[] = [
  {
    targetType: 'uml:Actor',
    ruleName: 'must_have_name',
    evaluate: (node: XmiNode) => {
      // Equivalent to Lisp: (WITH-CONSTRAINT ("must_have_name") (OCL-NOT-EMPTY (%NAME SELF)))
      const nameAttr = node.attributes['name'] as unknown as string | SaxesAttribute;
      const name = typeof nameAttr === 'string' ? nameAttr : nameAttr?.value;
      const passed = name !== undefined && name !== '';
      return {
        ruleName: 'must_have_name',
        passed,
        message: passed ? undefined : `Actor must have a name at line ${node.line}`
      };
    }
  },
  {
    targetType: 'uml:Class',
    ruleName: 'passive_class',
    evaluate: (node: XmiNode) => {
      // Equivalent to Lisp: (WITH-CONSTRAINT ("passive_class") (OCL-IMPLIES (OCL-NOT (%IS-ACTIVE SELF)) ...))
      const isActiveAttr = node.attributes['isActive'] as unknown as string | SaxesAttribute;
      const isActive = typeof isActiveAttr === 'string' ? isActiveAttr : isActiveAttr?.value;
      
      // Node evaluation happens on 'opentag' stream. Complex child relation checks 
      // require AST or specific endtag state tracking. 
      // This is a minimal TS port of the boolean predicate for now.
      return { ruleName: 'passive_class', passed: true }; 
    }
  },
  {
    targetType: 'uml:CreateLinkAction',
    ruleName: 'association_not_abstract',
    evaluate: (node: XmiNode) => {
      // Equivalent to: self.association().isAbstract = #false
      // Just a placeholder for cross-element tracking logic
      return { ruleName: 'association_not_abstract', passed: true };
    }
  }
];
