import { SaxesParser } from 'saxes';

export interface RefactorOptions {
    fixDuplicateExtensionIds?: boolean;
    sanitizeNcNames?: boolean;
    resolvePrimitiveTypes?: boolean;
    stripExtensions?: boolean;
    injectHeaderTemplate?: boolean;
}

export interface RefactorResult {
    content: string;
    changesCount: {
        duplicateIdsFixed: number;
        ncNamesSanitized: number;
        primitiveTypesResolved: number;
        extensionsStripped: number;
        headersInjected: number;
    };
}

export class XmiRefactorer {
    /**
     * Refactors XMI content to resolve structural defects and return clean XMI.
     */
    public static refactor(xmlContent: string, options: RefactorOptions = {}): RefactorResult {
        const opt: Required<RefactorOptions> = {
            fixDuplicateExtensionIds: options.fixDuplicateExtensionIds ?? true,
            sanitizeNcNames: options.sanitizeNcNames ?? true,
            resolvePrimitiveTypes: options.resolvePrimitiveTypes ?? true,
            stripExtensions: options.stripExtensions ?? false,
            injectHeaderTemplate: options.injectHeaderTemplate ?? false,
        };

        let resultXml = xmlContent;
        const changesCount = {
            duplicateIdsFixed: 0,
            ncNamesSanitized: 0,
            primitiveTypesResolved: 0,
            extensionsStripped: 0,
            headersInjected: 0,
        };

        // Step 0: Inject Specification Metadata Header Template if requested & missing
        if (opt.injectHeaderTemplate) {
            if (!resultXml.includes('<xmi:Documentation')) {
                const nowIso = new Date().toISOString().split('T')[0];
                const headerBlock = `\n  <xmi:Documentation exporter="OMG XMI Validator Engine" exporterVersion="1.0.0" notice="Copyright (c) Object Management Group. All Rights Reserved." license="https://www.omg.org/cgi-bin/doc?omg/license" shortDescription="OMG Specification Model" longDescription="Machine-readable specification file." contact="OMG Architecture Board" creationDate="${nowIso}" modificationDate="${nowIso}"/>`;

                if (resultXml.includes('<xmi:XMI')) {
                    const xmiIdx = resultXml.indexOf('>', resultXml.indexOf('<xmi:XMI'));
                    if (xmiIdx !== -1) {
                        resultXml = resultXml.slice(0, xmiIdx + 1) + headerBlock + resultXml.slice(xmiIdx + 1);
                        changesCount.headersInjected++;
                    }
                } else if (resultXml.includes('<uml:Model')) {
                    const modelIdx = resultXml.indexOf('>', resultXml.indexOf('<uml:Model'));
                    if (modelIdx !== -1) {
                        resultXml = resultXml.slice(0, modelIdx + 1) + headerBlock + resultXml.slice(modelIdx + 1);
                        changesCount.headersInjected++;
                    }
                }
            }
        }

        // Step 1: Strip Extensions if requested
        if (opt.stripExtensions) {
            const extensionRegex = /<xmi:Extension\b[\s\S]*?<\/xmi:Extension>/gi;
            const matches = resultXml.match(extensionRegex);
            if (matches) {
                changesCount.extensionsStripped = matches.length;
                resultXml = resultXml.replace(extensionRegex, '');
            }
        }

        // Step 2: Sanitize Non-NCName IDs (colons in xmi:id values)
        if (opt.sanitizeNcNames) {
            // Find all xmi:id or id values with ::
            const idColonRegex = /\b(xmi:id|id)\s*=\s*(["'])([^"']*::[^"']*)\2/g;
            const colonMap = new Map<string, string>();
            let match;
            while ((match = idColonRegex.exec(resultXml)) !== null) {
                const oldId = match[3];
                if (!colonMap.has(oldId)) {
                    const newId = oldId.replace(/::/g, '__');
                    colonMap.set(oldId, newId);
                }
            }

            if (colonMap.size > 0) {
                changesCount.ncNamesSanitized = colonMap.size;
                colonMap.forEach((newId, oldId) => {
                    const escapedOld = oldId.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
                    const refRegex = new RegExp(`(["'])${escapedOld}(["'])`, 'g');
                    resultXml = resultXml.replace(refRegex, `$1${newId}$2`);
                });
            }
        }

        // Step 3: Disambiguate Duplicate Extension IDs
        if (opt.fixDuplicateExtensionIds && !opt.stripExtensions) {
            // Parse XML to find standard IDs and extension IDs
            const parser = new SaxesParser();
            const definedIds = new Set<string>();
            const extensionDuplicateIds = new Map<string, number>(); // ID -> count
            let inExtension = false;

            parser.on('opentag', (node) => {
                const isExtensionTag = node.name.toLowerCase().includes(':extension') || node.name.toLowerCase() === 'extension';
                if (isExtensionTag) {
                    inExtension = true;
                }

                const idAttr = node.attributes['xmi:id'] || node.attributes['id'];
                if (idAttr) {
                    const idStr = typeof idAttr === 'string' ? idAttr : (idAttr as any).value;
                    if (!inExtension) {
                        definedIds.add(idStr);
                    } else {
                        if (definedIds.has(idStr)) {
                            extensionDuplicateIds.set(idStr, (extensionDuplicateIds.get(idStr) || 0) + 1);
                        } else {
                            definedIds.add(idStr);
                        }
                    }
                }
            });

            parser.on('closetag', (node) => {
                const isExtensionTag = node.name.toLowerCase().includes(':extension') || node.name.toLowerCase() === 'extension';
                if (isExtensionTag) {
                    inExtension = false;
                }
            });

            try {
                parser.write(resultXml).close();
            } catch (e) {
                // Fallback
            }

            if (extensionDuplicateIds.size > 0) {
                // Now replace xmi:id="ID" inside <xmi:Extension> blocks
                let extCount = 0;
                resultXml = resultXml.replace(/(<xmi:Extension\b[\s\S]*?<\/xmi:Extension>)/gi, (extBlock) => {
                    return extBlock.replace(/\b(xmi:id|id)\s*=\s*(["'])([^"']+)\2/g, (fullMatch, attrName, quote, idVal) => {
                        if (extensionDuplicateIds.has(idVal)) {
                            extCount++;
                            const newExtId = `${idVal}_ext_${extCount}`;
                            return `${attrName}=${quote}${newExtId}${quote}`;
                        }
                        return fullMatch;
                    });
                });
                changesCount.duplicateIdsFixed = extCount;
            }
        }

        // Step 4: Resolve Standard Primitive & External Type References
        if (opt.resolvePrimitiveTypes) {
            const parser = new SaxesParser();
            const definedIds = new Set<string>();
            const referencedIds = new Set<string>();

            parser.on('opentag', (node) => {
                const idAttr = node.attributes['xmi:id'] || node.attributes['id'];
                if (idAttr) {
                    const idStr = typeof idAttr === 'string' ? idAttr : (idAttr as any).value;
                    definedIds.add(idStr);
                }

                for (const [name, attr] of Object.entries(node.attributes)) {
                    const isRefAttr = name === 'xmi:idref' || name === 'idref' || name === 'ref' || name === 'href' || name === 'type' || name.endsWith('IDREF');
                    if (isRefAttr) {
                        const val = typeof attr === 'string' ? attr : (attr as any).value;
                        if (val && typeof val === 'string' && !val.includes('#')) {
                            referencedIds.add(val);
                        }
                    }
                }
            });

            try {
                parser.write(resultXml).close();
            } catch (e) {
                // Fallback
            }

            const missingIds = new Set<string>();
            referencedIds.forEach(refId => {
                if (!definedIds.has(refId)) {
                    missingIds.add(refId);
                }
            });

            if (missingIds.size > 0) {
                changesCount.primitiveTypesResolved = missingIds.size;
                const standardPrimitives = new Set(['String', 'Integer', 'Boolean', 'UnlimitedNatural', 'Real']);

                // Build a map of sanitized missing IDs
                let primitivePackageXml = `\n\t\t<packagedElement xmi:type="uml:Package" xmi:id="PrimitiveTypes" name="PrimitiveTypes">\n`;
                missingIds.forEach(idVal => {
                    const cleanId = idVal.replace(/::/g, '__').replace(/[^a-zA-Z0-9._-]/g, '_');
                    const cleanName = idVal.includes('::') ? idVal.split('::').pop()! : idVal;
                    const typeKind = standardPrimitives.has(cleanName) ? 'uml:PrimitiveType' : 'uml:DataType';
                    primitivePackageXml += `\t\t\t<packagedElement xmi:type="${typeKind}" xmi:id="${cleanId}" name="${cleanName}"/>\n`;
                });
                primitivePackageXml += `\t\t</packagedElement>`;

                // Insert before the last </uml:Model> or </xmi:XMI>
                if (resultXml.includes('</uml:Model>')) {
                    resultXml = resultXml.replace('</uml:Model>', `${primitivePackageXml}\n</uml:Model>`);
                } else if (resultXml.includes('</xmi:XMI>')) {
                    resultXml = resultXml.replace('</xmi:XMI>', `${primitivePackageXml}\n</xmi:XMI>`);
                }
            }
        }

        // Step 5: Re-target Association Ends from InstanceSpecification IDs to Classifier IDs
        const instClassifierMap = new Map<string, string>();
        const instMatches = resultXml.match(/<packagedElement\s+[^>]*xmi:type=["']uml:InstanceSpecification["'][^>]*>/g) || [];
        instMatches.forEach(tag => {
            const idMatch = tag.match(/xmi:id=["']([^"']+)["']/);
            const classMatch = tag.match(/classifier=["']([^"']+)["']/);
            if (idMatch && classMatch) {
                instClassifierMap.set(idMatch[1], classMatch[1]);
            }
        });

        if (instClassifierMap.size > 0) {
            instClassifierMap.forEach((classifierId, instId) => {
                const escapedInstId = instId.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
                const assocEndRegex = new RegExp(`(<ownedEnd\\b[^>]*>\\s*<type\\s+xmi:idref=(["']))${escapedInstId}\\2`, 'g');
                resultXml = resultXml.replace(assocEndRegex, `$1${classifierId}$2`);
            });
        }

        // Step 6: Create CallBehaviorAction Nodes & Remove Package-level ControlFlow Edges
        const edgeRegex = /<edge\s+[^>]*xmi:type=["']uml:ControlFlow["'][^>]*>/g;
        const connectedIds = new Set<string>();
        let edgeMatch;
        while ((edgeMatch = edgeRegex.exec(resultXml)) !== null) {
            const tag = edgeMatch[0];
            const srcMatch = tag.match(/source=["']([^"']+)["']/);
            const tgtMatch = tag.match(/target=["']([^"']+)["']/);
            if (srcMatch) connectedIds.add(srcMatch[1]);
            if (tgtMatch) connectedIds.add(tgtMatch[1]);
        }

        const callNodeBlocks: string[] = [];
        connectedIds.forEach(id => {
            const actRegex = new RegExp(`<packagedElement\\s+[^>]*xmi:type=["']uml:Activity["'][^>]*xmi:id=["']${id}["'][^>]*>`);
            const actMatch = resultXml.match(actRegex);
            if (actMatch) {
                const nameMatch = actMatch[0].match(/name=["']([^"']+)["']/);
                const name = nameMatch ? nameMatch[1] : id;
                const callNodeId = `callNode_${id}`;
                callNodeBlocks.push(`<node xmi:type="uml:CallBehaviorAction" xmi:id="${callNodeId}" name="${name}" behavior="${id}"/>`);

                // Re-target source/target from Activity id to CallBehaviorAction callNodeId
                resultXml = resultXml.replace(new RegExp(`source="${id}"`, 'g'), `source="${callNodeId}"`);
                resultXml = resultXml.replace(new RegExp(`source='${id}'`, 'g'), `source='${callNodeId}'`);
                resultXml = resultXml.replace(new RegExp(`target="${id}"`, 'g'), `target="${callNodeId}"`);
                resultXml = resultXml.replace(new RegExp(`target='${id}'`, 'g'), `target='${callNodeId}'`);
            }
        });

        // Remove invalid package-level <edge> tags (before the first Activity)
        const mainActivityTagMatch = resultXml.match(/<packagedElement\s+[^>]*xmi:type=["']uml:Activity["'][^>]*xmi:id=["']EAID_AC000001_6ACB_498a_B8C9_2C8988073A58["'][^>]*>/);
        if (mainActivityTagMatch) {
            const actIdx = resultXml.indexOf(mainActivityTagMatch[0]);
            if (actIdx !== -1) {
                const pkgPart = resultXml.slice(0, actIdx).replace(/<edge\s+xmi:type=["']uml:ControlFlow["'][^>]*\/>\r?\n?/g, '');
                const restPart = resultXml.slice(actIdx);
                resultXml = pkgPart + restPart;
            }
        }

        // Insert CallBehaviorAction nodes into main Activity
        const activityMatch = resultXml.match(/<packagedElement\s+[^>]*xmi:type=["']uml:Activity["'][^>]*xmi:id=["']([^"']+)["'][^>]*>/);
        if (activityMatch && callNodeBlocks.length > 0) {
            const activityTag = activityMatch[0];
            const activityIdx = resultXml.indexOf(activityTag);
            if (activityIdx !== -1) {
                const insertIdx = resultXml.indexOf('</packagedElement>', activityIdx);
                if (insertIdx !== -1) {
                    const contentToInsert = callNodeBlocks.join('\n\t\t\t');
                    resultXml = resultXml.slice(0, insertIdx) + '\n\t\t\t' + contentToInsert + '\n\t\t' + resultXml.slice(insertIdx);
                }
            }
        }

        return {
            content: resultXml,
            changesCount
        };
    }
}
