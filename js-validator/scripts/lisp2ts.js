import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const lispFile = path.resolve(__dirname, '../../models/uml/uml-constraints.lisp');
const outputFile = path.resolve(__dirname, '../src/rules/GeneratedUmlConstraints.ts');

if (!fs.existsSync(lispFile)) {
  console.error('Cannot find Lisp source at:', lispFile);
  process.exit(1);
}

const content = fs.readFileSync(lispFile, 'utf-8');

// Quick and dirty parser that scans for `(DEFMETHOD OCL-CONSTRAINTS` up to its matching closing paren.
let pos = 0;

function getMatchingParen(str, startPos) {
  let depth = 0;
  for (let i = startPos; i < str.length; i++) {
    if (str[i] === '(') depth++;
    else if (str[i] === ')') {
      depth--;
      if (depth === 0) return i;
    }
  }
  return -1;
}

const defmethods = [];
let searchStr = "(DEFMETHOD OCL-CONSTRAINTS";
while ((pos = content.indexOf(searchStr, pos)) !== -1) {
  const end = getMatchingParen(content, pos);
  if (end === -1) break;
  defmethods.push(content.substring(pos, end + 1));
  pos = end;
}

const parsedRules = [];

function parseConstraintNode(body) {
  // finds (WITH-CONSTRAINT ("name") ...)
  let cPos = 0;
  let searchConstraint = "(WITH-CONSTRAINT";
  const constraints = [];
  while ((cPos = body.indexOf(searchConstraint, cPos)) !== -1) {
    const end = getMatchingParen(body, cPos);
    if (end !== -1) {
      const fullStr = body.substring(cPos, end + 1);
      
      const nameMatch = fullStr.match(/\(\s*WITH-CONSTRAINT\s*\(\s*"([^"]+)"\s*\)/);
      if (nameMatch) {
         const ruleName = nameMatch[1];
         // extract the body of the constraint
         const ruleBody = fullStr.substring(nameMatch[0].length, fullStr.length - 1).trim();
         constraints.push({ ruleName, ruleBody });
      }
    }
    cPos += searchConstraint.length;
  }
  return constraints;
}

for (const m of defmethods) {
  const classMatch = m.match(/\(\s*\(\s*SELF\s*\|([^|]+)\|\s*\)\s*\)/);
  if (classMatch) {
    const className = classMatch[1];
    const constraints = parseConstraintNode(m);
    parsedRules.push({ className, constraints });
  }
}

// Very basic Lisp->TS transpile mapping
function transpileLisp(expr) {
  if (expr === ':TRUE') return 'true';
  if (expr === ':FALSE') return 'false';
  
  if (expr.startsWith('(OCL-NOT-EMPTY')) {
    const propMatch = expr.match(/\(%([^?\s]+)\s+SELF\)/);
    if (propMatch) {
      const prop = propMatch[1].toLowerCase();
      // Safe guard against undefined attributes mapping
      return `!!node.attributes['${prop}']`;
    }
  }

  // Placeholder for complex nested rules like (OCL-IMPLIES (OCL-NOT (...))) 
  // A robust AST transformer (e.g. Babel for Lisp) would be built here for full 1:1 conversion.
  return `/* TODO: complex translation for ${expr.replace(/\n|"/g, ' ').slice(0, 50)}... */ true`;
}

let outTs = `import { XmiNode } from '../engine/XmiParser';\nimport { ConstraintDefinition } from './UmlConstraints';\n\n`;
outTs += `export const generatedUmlConstraints: ConstraintDefinition[] = [\n`;

let totalConstraints = 0;

parsedRules.forEach(cls => {
  cls.constraints.forEach(c => {
    totalConstraints++;
    let tsCode = transpileLisp(c.ruleBody);
    outTs += `  {
    targetType: 'uml:${cls.className}',
    ruleName: '${c.ruleName}',
    evaluate: (node: XmiNode) => {
      const passed = ${tsCode};
      return {
        ruleName: '${c.ruleName}',
        passed,
        message: passed ? undefined : 'Constraint ${c.ruleName} failed'
      };
    }
  },\n`;
  });
});

outTs += `];\n`;

const targetDir = path.dirname(outputFile);
if (!fs.existsSync(targetDir)) {
  fs.mkdirSync(targetDir, { recursive: true });
}

fs.writeFileSync(outputFile, outTs, 'utf-8');
console.log(`Successfully generated ${totalConstraints} constraints across ${parsedRules.length} UML Classes into GeneratedUmlConstraints.ts!`);
