# xmi-validator

Validator and Automated Refactoring Engine for models and profiles specified in OMG XML Metadata Interchange (XMI).

---

## Overview

This repository provides validation tools for UML, SysML, and OMG XMI specifications:

1. **`js-validator` (TypeScript / Node.js Engine)**:
   A modern, fast, and stateless validation and automated refactoring engine. Validates XMI 2.5.1 / UML 2.5.1 compliance, diagnoses root causes, and automatically refactors non-compliant or vendor-corrupted XMI files.

2. **Common Lisp / SBCL Engine (`src/`)**:
   Legacy Common Lisp validation server.

---

## Features & Error Checks (`js-validator`)

### Errors & Rules Checked
* **XMI 2.5.1 Specification Rules**:
  - Global `xmi:id` Uniqueness & Collision Detection
  - XML NCName Syntax Compliance (flagging invalid characters like double colons `::` in IDs)
  - Reference Integrity Verification (detecting broken `idref`, `type`, `base_*`, `href` references)
* **UML Metamodel & Structural Rules**:
  - Association End Classifier Validation (ensuring ends target `Classifier`s, not `InstanceSpecification`s)
  - Activity Diagram & ControlFlow Wiring (verifying `ControlFlow` edges connect valid `ActivityNode`s like `CallBehaviorAction`, `DecisionNode`, `InitialNode`, rather than `uml:Activity` behavior classifiers)
  - Package Ownership Rules (preventing orphaned `<edge xmi:type="uml:ControlFlow">` tags under `Package`)
* **Stereotype & Documentation Rules**:
  - Missing `<ownedComment>` documentation
  - Placeholder / unnamed model attributes (`name="unnamed"`)
* **Vendor & Specification Version Rules**:
  - Sparx Enterprise Architect, MagicDraw/Cameo, and vendor `<xmi:Extension>` tag detection
  - Outdated OMG specification namespace URI detection

---

## Automated Refactoring Engine (`XmiRefactorer`)

Supports CLI automated refactoring (`--refactor` / `--strip-extensions`) to repair corrupted XMI files:

* **Extension ID Collision Disambiguation**: Appends unique extension suffixes to duplicate `xmi:id` attributes inside `<xmi:Extension>` tags.
* **NCName Colon Sanitization**: Converts colons (`::`) in `xmi:id` and `xmi:idref` attributes into compliant NCName underscores (`__`).
* **Primitive & External Type Resolution**: Injects standard `PrimitiveTypes` / `DataType` package headers for bare type references (`String`, `Integer`, `Boolean`, `Returncode_t`, etc.).
* **Association End Classifier Re-targeting**: Maps `InstanceSpecification` IDs to underlying `classifier` class IDs and re-targets `<ownedEnd> <type>` references to valid `uml:Class` elements.
* **CallBehaviorAction Node Generation & ControlFlow Re-targeting**: Wraps `uml:Activity` behaviors in `CallBehaviorAction` nodes inside the Activity context, re-targeting `ControlFlow` `source` and `target` attributes while preserving all original `uml:Activity` package definitions.
* **Package-Level ControlFlow Relocation & Deduplication**: Strips orphaned package-level `<edge>` elements and relocates them inside the containing `<packagedElement xmi:type="uml:Activity">`.
* **Extension Stripping (`--strip-extensions`)**: Strips vendor-specific `<xmi:Extension>` blocks to export clean, 100% compliant standard OMG XMI files.

---

## Getting Started (`js-validator`)

```bash
cd js-validator

# Run automated tests
npm test

# Run validation and root cause diagnosis
npx tsx src/cli/index.ts "path/to/model.xml"

# Run automated refactoring to generate clean XMI
npx tsx src/cli/index.ts --refactor --strip-extensions "path/to/model.xml" -o "path/to/model-pure.xml"
```

---

## License
MIT
