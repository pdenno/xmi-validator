# XMI Validator & Refactoring Engine

A modern, fast, and stateless XMI Validation and Automated Refactoring Engine written in TypeScript. Designed to validate UML, SysML, and OMG-based XMI files against official specifications, diagnose suspected root causes, and automatically refactor non-compliant or vendor-corrupted XMI files into clean, 100% standard OMG XMI files.

---

## Key Features

### 1. Comprehensive Validation Checks
The validator performs multi-pass structural, metamodel, and specification checks:

* **XMI 2.5.1 Specification Compliance**:
  - **ID Uniqueness**: Detects duplicate `xmi:id` attributes across standard model elements and vendor extension blocks.
  - **XML NCName Format**: Enforces W3C NCName rules on `xmi:id` attributes (flagging invalid characters like double colons `::`).
  - **Reference Integrity**: Identifies broken `xmi:idref`, `type`, `base_*`, and `href` references.
* **UML Structural Metamodel & Consistency**:
  - **Association End Classifiers**: Ensures association ends (`<ownedEnd> <type>`) target UML `Classifier`s (`uml:Class`, `uml:Interface`) rather than `InstanceSpecification` objects.
  - **Activity Diagram & ControlFlow Wiring**: Validates that `ControlFlow` edge `source` and `target` attributes connect valid `ActivityNode`s (`CallBehaviorAction`, `DecisionNode`, `InitialNode`, `FinalNode`) rather than `uml:Activity` behavior classifiers.
  - **Package Feature Ownership**: Flags orphaned `<edge xmi:type="uml:ControlFlow">` elements incorrectly placed under `<packagedElement xmi:type="uml:Package">`.
* **Stereotype & Documentation Rules**:
  - **Missing Documentation**: Identifies elements and stereotypes lacking `<ownedComment>` documentation tags.
  - **Placeholder Attribute Names**: Detects default placeholder names (`name="unnamed"`).
* **Proprietary Tool Extension Detection**:
  - Detects Sparx Enterprise Architect, MagicDraw/Cameo, and vendor `<xmi:Extension>` tags and proprietary profile namespaces.

---

### 2. Automated XMI Refactoring & Repair Engine (`XmiRefactorer`)
Automates non-destructive structural cleanup to transform non-compliant XMI files into valid OMG standard XMI:

* **Extension ID Collision Disambiguation**:
  - Disambiguates duplicate `xmi:id` attributes inside `<xmi:Extension>` tags (e.g. `<Sequence xmi:id="...">`) so extension elements do not collide with standard UML model elements.
* **NCName Colon Sanitization**:
  - Converts invalid colons (`::`) in `xmi:id` and `xmi:idref` attributes into compliant NCName underscores (`__`).
* **Primitive & External Type Resolution**:
  - Resolves bare primitive type references (`String`, `Integer`, `Boolean`, `UnlimitedNatural`, `Real`, `Returncode_t`, etc.) by injecting standard `PrimitiveTypes` / `DataType` package headers.
* **Association End Classifier Re-targeting**:
  - Maps `InstanceSpecification` IDs to their underlying `classifier` class IDs, automatically re-targeting `<ownedEnd> <type>` references to valid `uml:Class` elements.
* **CallBehaviorAction Node Generation & ControlFlow Re-targeting**:
  - Wraps referenced `uml:Activity` behaviors in standard UML 2.5 `CallBehaviorAction` nodes (`<node xmi:type="uml:CallBehaviorAction">`), updating `ControlFlow` `source` and `target` attributes to connect valid `ActivityNode`s while preserving all original `uml:Activity` package definitions.
* **Orphaned Package Edge Relocation & Deduplication**:
  - Strips invalid package-level `<edge>` elements and relocates them inside the containing `<packagedElement xmi:type="uml:Activity">` behavior block.
* **Extension Stripping (`--strip-extensions`)**:
  - Removes vendor-specific `<xmi:Extension>` blocks to produce pure, tool-agnostic OMG XMI exports.

---

### 3. Suspected Root Cause Reporting Engine
Aggregates individual raw validation errors into high-level **Suspected Root Cause** categories, providing:
- Issue counts and severity ratings (`ERROR` / `WARNING`).
- Metamodel diagnosis and standards explanations.
- Recommended remedies and auto-fixability indicators (`✓ Yes (--refactor)` vs manual modeling fix).
- Formatted summary matrices in stdout CLI output and Markdown reports.

---

## Usage

### CLI Commands

#### Standard Validation & Root Cause Analysis
```bash
npx tsx src/cli/index.ts "path/to/model.xml"
```

#### Automated Refactoring (Creates Clean XMI)
```bash
npx tsx src/cli/index.ts --refactor "path/to/model.xml"
```

#### Pure OMG XMI Refactoring (Strips Proprietary Extensions)
```bash
npx tsx src/cli/index.ts --refactor --strip-extensions "path/to/model.xml" -o "path/to/model-pure.xml"
```

### Running Automated Tests
Run the Vitest test suite to verify rules and refactoring engines:
```bash
npm test
```

---

## License
MIT
