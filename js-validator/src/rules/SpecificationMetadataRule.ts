import { XmiParser } from '../engine/XmiParser';
import type { XmiNode } from '../engine/XmiParser';
import type { SaxesAttribute } from 'saxes';
import { isValidIsoDate, isValidUrl } from '../engine/MetadataStandards';
import type { HeaderMetadataResult } from '../engine/MetadataStandards';

export class SpecificationMetadataRule {
  private errors: string[] = [];
  private warnings: string[] = [];
  private headerMetadata: HeaderMetadataResult = {
    hasCopyright: false,
    hasLicense: false,
    hasLabel: false,
    hasAbstract: false,
    hasContributors: false,
    hasChangeNotes: false,
    hasAdditionalNotes: false,
    hasCreationDate: false,
    hasModificationDate: false,
    hasDependencies: false,
    hasVersionInfo: false,
    hasSpecificationLink: false,
  };

  private inHeaderScope = false;
  private isRootModel = false;
  private rootModelName?: string;

  constructor(parser: XmiParser) {
    parser.on('opentag', (node: XmiNode) => {
      const attrs = node.attributes as unknown as Record<string, string | SaxesAttribute>;
      const getAttr = (key: string): string => {
        if (!attrs || !attrs[key]) return '';
        const val = attrs[key];
        return typeof val === 'string' ? val : val.value;
      };

      // 1. Check <xmi:Documentation> node
      if (node.name === 'xmi:Documentation') {
        this.inHeaderScope = true;

        const notice = getAttr('notice') || getAttr('owner') || getAttr('copyright');
        if (notice) {
          this.headerMetadata.hasCopyright = true;
          this.headerMetadata.copyrightText = notice;
        }

        const license = getAttr('license');
        if (license) {
          this.headerMetadata.hasLicense = true;
          this.headerMetadata.licenseText = license;
        }

        const shortDesc = getAttr('shortDescription') || getAttr('label') || getAttr('title');
        if (shortDesc) {
          this.headerMetadata.hasLabel = true;
          this.headerMetadata.labelValue = shortDesc;
        }

        const longDesc = getAttr('longDescription') || getAttr('abstract');
        if (longDesc) {
          this.headerMetadata.hasAbstract = true;
          this.headerMetadata.abstractText = longDesc;
        }

        const exporterVersion = getAttr('exporterVersion') || getAttr('version');
        if (exporterVersion) {
          this.headerMetadata.hasVersionInfo = true;
          this.headerMetadata.versionString = exporterVersion;
        }

        const contact = getAttr('contact') || getAttr('contributors');
        if (contact) {
          this.headerMetadata.hasContributors = true;
          this.headerMetadata.contributors = [contact];
        }
      }

      // 2. Check root model/package element
      if (node.name === 'uml:Model' || node.name === 'uml:Package' || node.name === 'packagedElement') {
        const xmiType = getAttr('xmi:type');
        if (!this.rootModelName && (node.name === 'uml:Model' || xmiType === 'uml:Model' || xmiType === 'uml:Package')) {
          const modelName = getAttr('name');
          if (modelName && modelName !== 'unnamed') {
            this.rootModelName = modelName;
            if (!this.headerMetadata.hasLabel) {
              this.headerMetadata.hasLabel = true;
              this.headerMetadata.labelValue = modelName;
            }
          }
        }
      }

      // 3. Check <importedPackage> dependencies
      if (node.name === 'importedPackage' || node.name === 'packageImport' || node.name === 'cmns-av:dependsOn') {
        this.headerMetadata.hasDependencies = true;
        const depHref = getAttr('href') || getAttr('name') || getAttr('xmi:idref');
        if (depHref) {
          if (!this.headerMetadata.dependencies) this.headerMetadata.dependencies = [];
          this.headerMetadata.dependencies.push(depHref);
        }
      }

      // 4. Check ownedComment or metadata stereotyping on root model
      if (node.name === 'ownedComment' || node.name === 'comment' || node.name.startsWith('cmns-av:') || node.name.startsWith('dcterms:')) {
        const bodyText = getAttr('body') || getAttr('value');
        if (bodyText) {
          this.analyzeTextForMetadata(bodyText, node.name);
        }
      }
    });

    parser.on('closetag', (node: XmiNode) => {
      if (node.name === 'xmi:Documentation') {
        this.inHeaderScope = false;
      }
    });
  }

  /**
   * Scans documentation comment text or tagged value body text for specification metadata keywords.
   */
  private analyzeTextForMetadata(text: string, nodeName: string): void {
    const lower = text.toLowerCase();

    // Copyright
    if (lower.includes('copyright') || lower.includes('(c)') || lower.includes('©') || nodeName === 'cmns-av:copyright' || nodeName === 'dcterms:rights') {
      this.headerMetadata.hasCopyright = true;
      this.headerMetadata.copyrightText = text;
    }

    // License
    if (lower.includes('license') || lower.includes('mit license') || lower.includes('apache') || lower.includes('omg license') || nodeName === 'cmns-av:license' || nodeName === 'dcterms:license') {
      this.headerMetadata.hasLicense = true;
      this.headerMetadata.licenseText = text;
    }

    // Abstract
    if (lower.includes('abstract:') || lower.includes('overview:') || nodeName === 'dcterms:abstract') {
      this.headerMetadata.hasAbstract = true;
      this.headerMetadata.abstractText = text;
    }

    // Contributors
    if (lower.includes('contributor') || lower.includes('author') || nodeName === 'cmns-av:contributor' || nodeName === 'dcterms:contributor') {
      this.headerMetadata.hasContributors = true;
    }

    // Change notes
    if (lower.includes('change note') || lower.includes('revision history') || lower.includes('changelog') || nodeName === 'cmns-av:changeNote' || nodeName === 'skos:changeNote') {
      this.headerMetadata.hasChangeNotes = true;
      this.headerMetadata.changeNotesText = text;
    }

    // Explanatory / Additional notes
    if (lower.includes('note:') || lower.includes('usage:') || nodeName === 'cmns-av:explanatoryNote' || nodeName === 'cmns-av:usageNote') {
      this.headerMetadata.hasAdditionalNotes = true;
      this.headerMetadata.additionalNotesText = text;
    }

    // Dates
    const isoDateMatch = text.match(/\b\d{4}-\d{2}-\d{2}\b/);
    if (isoDateMatch) {
      if (lower.includes('created') || nodeName === 'cmns-av:creationDate' || nodeName === 'dcterms:created') {
        this.headerMetadata.hasCreationDate = true;
        this.headerMetadata.creationDate = isoDateMatch[0];
      }
      if (lower.includes('modified') || lower.includes('updated') || nodeName === 'cmns-av:modificationDate' || nodeName === 'dcterms:modified') {
        this.headerMetadata.hasModificationDate = true;
        this.headerMetadata.modificationDate = isoDateMatch[0];
      }
      if (!this.headerMetadata.hasCreationDate && !this.headerMetadata.hasModificationDate) {
        this.headerMetadata.hasCreationDate = true;
        this.headerMetadata.creationDate = isoDateMatch[0];
      }
    }

    // Specification link
    const urlMatch = text.match(/https?:\/\/[^\s>"]+/i);
    if (urlMatch) {
      if (lower.includes('specification') || lower.includes('omg.org/spec') || nodeName === 'cmns-av:isDefinedBy' || nodeName === 'rdfs:isDefinedBy') {
        this.headerMetadata.hasSpecificationLink = true;
        this.headerMetadata.specificationLink = urlMatch[0];
      }
    }

    // Version info
    if (lower.includes('version') || lower.includes('v1.') || lower.includes('v2.') || nodeName === 'cmns-av:version') {
      this.headerMetadata.hasVersionInfo = true;
    }
  }

  /**
   * Finalizes rule evaluation after parsing finishes.
   */
  public finalize(): void {
    // Section A MUST rules:
    if (!this.headerMetadata.hasCopyright) {
      this.errors.push('[ERROR] Specification Header Violation (Section A.1): Missing Copyright notice. Machine-readable OMG specifications MUST include a copyright header.');
    }
    if (!this.headerMetadata.hasLicense) {
      this.errors.push('[ERROR] Specification Header Violation (Section A.2): Missing License declaration. Machine-readable OMG specifications MUST specify a license.');
    }
    if (!this.headerMetadata.hasLabel) {
      this.errors.push('[ERROR] Specification Header Violation (Section A.3): Missing Natural Language Label for specification/model.');
    }

    // Section B SHOULD rules:
    if (!this.headerMetadata.hasAbstract) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.1): Missing Abstract or short description for machine-readable specification file.');
    }
    if (!this.headerMetadata.hasContributors) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.2): Missing Contributors list.');
    }
    if (!this.headerMetadata.hasChangeNotes) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.3): Missing Change Notes or revision history.');
    }
    if (!this.headerMetadata.hasAdditionalNotes) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.4): Missing Additional usage/explanatory notes.');
    }
    if (!this.headerMetadata.hasCreationDate) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.5): Missing Creation Date.');
    } else if (this.headerMetadata.creationDate && !isValidIsoDate(this.headerMetadata.creationDate)) {
      this.warnings.push(`[WARNING] Specification Header Quality: Creation Date '${this.headerMetadata.creationDate}' is not ISO 8601 compliant (YYYY-MM-DD).`);
    }
    if (!this.headerMetadata.hasModificationDate) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.6): Missing Modification Date.');
    } else if (this.headerMetadata.modificationDate && !isValidIsoDate(this.headerMetadata.modificationDate)) {
      this.warnings.push(`[WARNING] Specification Header Quality: Modification Date '${this.headerMetadata.modificationDate}' is not ISO 8601 compliant (YYYY-MM-DD).`);
    }
    if (!this.headerMetadata.hasDependencies) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.7): No external model dependencies (<importedPackage> / dependsOn) specified.');
    }
    if (!this.headerMetadata.hasVersionInfo) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.8): Missing Version information (e.g. exporterVersion / cmns-av:version).');
    }
    if (!this.headerMetadata.hasSpecificationLink) {
      this.warnings.push('[WARNING] Specification Header Recommendation (Section B.9): Missing Link/URI to official specification document (e.g. rdfs:isDefinedBy / cmns-av:isDefinedBy).');
    } else if (this.headerMetadata.specificationLink && !isValidUrl(this.headerMetadata.specificationLink)) {
      this.warnings.push(`[WARNING] Specification Header Quality: Specification Link '${this.headerMetadata.specificationLink}' is not a valid URL.`);
    }
  }

  public getErrors(): string[] {
    return this.errors;
  }

  public getWarnings(): string[] {
    return this.warnings;
  }

  public getMetadataResult(): HeaderMetadataResult {
    return this.headerMetadata;
  }
}
