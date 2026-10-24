/**
 * OMG Specification & XMI Metadata Standards Definitions
 * Maps OMG Commons Annotation Vocabulary (cmns-av), Dublin Core (dcterms),
 * W3C SKOS, and ISO 704 guidelines.
 */

export interface HeaderMetadataResult {
  hasCopyright: boolean;
  copyrightText?: string;
  hasLicense: boolean;
  licenseText?: string;
  hasLabel: boolean;
  labelValue?: string;
  hasAbstract: boolean;
  abstractText?: string;
  hasContributors: boolean;
  contributors?: string[];
  hasChangeNotes: boolean;
  changeNotesText?: string;
  hasAdditionalNotes: boolean;
  additionalNotesText?: string;
  hasCreationDate: boolean;
  creationDate?: string;
  hasModificationDate: boolean;
  modificationDate?: string;
  hasDependencies: boolean;
  dependencies?: string[];
  hasVersionInfo: boolean;
  versionString?: string;
  hasSpecificationLink: boolean;
  specificationLink?: string;
}

export interface ElementAnnotationQuality {
  hasLabel: boolean;
  isLabelValid: boolean;
  hasDefinition: boolean;
  isIso704Compliant: boolean;
  iso704Issues: string[];
  hasExplanatoryNotes: boolean;
  hasEditorialNotes: boolean;
  hasUsageNotes: boolean;
  hasSource: boolean;
  hasSynonyms: boolean;
  hasAbbreviations: boolean;
  hasSymbols: boolean;
}

export const METADATA_NAMESPACES = {
  CMNS_AV: 'https://www.omg.org/spec/Commons/AnnotationVocabulary/',
  DCTERMS: 'http://purl.org/dc/terms/',
  SKOS: 'http://www.w3.org/2004/02/skos/core#',
  RDFS: 'http://www.w3.org/2000/01/rdf-schema#',
  OWL: 'http://www.w3.org/2002/07/owl#',
} as const;

/**
 * Validates ISO 704 compliance for element definitions.
 * ISO 704 rules:
 * 1. Must be non-empty and meaningful (not placeholder text).
 * 2. Must not begin with redundant meta-phrases (e.g. "This class represents", "An attribute that").
 * 3. Must not be circular (e.g. definition of "Account" is "An account").
 * 4. Must not be raw TODO markers.
 */
export function evaluateIso704Compliance(elementName: string, definition: string): { isCompliant: boolean; issues: string[] } {
  const issues: string[] = [];
  const cleanDef = definition.trim();

  if (!cleanDef) {
    return { isCompliant: false, issues: ['Definition is empty or whitespace.'] };
  }

  // Check for placeholder / todo text
  if (/^(todo|tbd|placeholder|none|n\/a|\?+)$/i.test(cleanDef)) {
    issues.push(`Definition contains placeholder text: "${cleanDef}"`);
  }

  // Check for redundant meta-language
  const metaPatterns = [
    /^(this (class|interface|stereotype|package|attribute|property|operation) (is|represents|defines|specifies))/i,
    /^(represents a|defines a|is a class for)/i,
  ];

  for (const pattern of metaPatterns) {
    if (pattern.test(cleanDef)) {
      issues.push(`ISO 704 Violation: Avoid meta-phrases at definition start (e.g. "${cleanDef.slice(0, 35)}...")`);
      break;
    }
  }

  // Check for circular definition (repeating term without detail)
  if (elementName && elementName.length > 2) {
    const normName = elementName.toLowerCase();
    const normDef = cleanDef.toLowerCase().replace(/[.,;:]+$/, '');
    if (normDef === normName || normDef === `a ${normName}` || normDef === `an ${normName}` || normDef === `the ${normName}`) {
      issues.push(`ISO 704 Violation: Circular definition repeating only the element name "${elementName}".`);
    }
  }

  return {
    isCompliant: issues.length === 0,
    issues,
  };
}

/**
 * Validates ISO 8601 date string format (YYYY-MM-DD or YYYY-MM-DDTHH:mm:ssZ).
 */
export function isValidIsoDate(dateStr: string): boolean {
  if (!dateStr) return false;
  const isoDateRegex = /^\d{4}-\d{2}-\d{2}(T\d{2}:\d{2}:\d{2}(\.\d+)?(Z|[+-]\d{2}:\d{2})?)?$/;
  return isoDateRegex.test(dateStr.trim());
}

/**
 * Validates URL or URI format.
 */
export function isValidUrl(urlStr: string): boolean {
  if (!urlStr) return false;
  try {
    const url = new URL(urlStr.trim());
    return url.protocol === 'http:' || url.protocol === 'https:' || url.protocol === 'urn:';
  } catch {
    return false;
  }
}
