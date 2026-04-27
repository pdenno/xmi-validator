# XMI Validator

A modern, fast, and stateless XMI Validation Engine written in TypeScript. Designed to validate UML, SysML, and other OMG-based XMI files with a focus on structural consistency and tool-specific extension detection.

## Features
- **Stateless Validation**: Entirely client-side, no data leaves your browser.
- **Structural Checks**: Validates UML consistency (e.g., Association targets, InstanceSpecification features).
- **Proprietary Extension Detection**: Warns about Sparx EA, MagicDraw/Cameo, and other vendor-specific namespaces.
- **Stereotype Documentation**: Flags missing documentation for stereotypes and properties.
- **Canonical Renumbering**: Optional stable ID generation (sequential IDs) for reliable diffing.
- **Latest Standards**: Validates against the latest OMG specifications (UML 2.5.1).

## Getting Started

### Prerequisites
- [Node.js](https://nodejs.org/) (v18 or higher)
- [npm](https://www.npmjs.com/)

### Installation & Run

#### Windows
```powershell
.\scripts\install.ps1
.\scripts\run.ps1
```

#### Unix/Linux
```bash
chmod +x scripts/*.sh
./scripts/install.sh
./scripts/run.sh
```

## Self-Tests
To verify the engine and rules, run the automated test suite:
```bash
npm test
```

## Advanced Configuration
- **Custom Standards**: You can configure custom URI mappings for different XMI versions in the "Settings" menu (coming soon in advanced UI).
- **Canonical Renumbering**: After validating a file, click "Canonicalize & Download" to generate a stable XMI with sequential IDs.

## Other links
Some test data from https://www.omgwiki.org/model-interchange/doku.php?id=start#test_suite 
## License
MIT
