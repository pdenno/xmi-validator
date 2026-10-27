import { CodeViewer } from './CodeViewer';
import { XmiParser } from '../engine/XmiParser';
import { ConstraintEvaluator } from '../engine/ConstraintEvaluator';
import { generatedUmlConstraints } from '../rules/GeneratedUmlConstraints';
import { ToolSpecificExtensionRule } from '../rules/ToolSpecificExtensionRule';
import { StereotypeDocumentationRule } from '../rules/StereotypeDocumentationRule';
import { OutdatedStandardReferenceRule } from '../rules/OutdatedStandardReferenceRule';
import { UmlConsistencyRule } from '../rules/UmlConsistencyRule';
import { XmiSpecComplianceRule } from '../rules/XmiSpecComplianceRule';
import { ValidationSession } from '../engine/ValidationSession';
import { ReportGenerator } from '../engine/ReportGenerator';
import { CanonicalRenumberer } from '../engine/CanonicalRenumberer';
import { ProgressDialog } from './ProgressDialog';
import './styles.css';

const themeSelector = document.getElementById('theme-selector') as HTMLSelectElement;

themeSelector?.addEventListener('change', (e) => {
  const target = e.target as HTMLSelectElement;
  document.body.className = target.value;
});

const settingsToggle = document.getElementById('settings-toggle');
const settingsPanel = document.getElementById('settings-panel');
const uriMappingInput = document.getElementById('uri-mapping') as HTMLTextAreaElement;

settingsToggle?.addEventListener('click', () => {
    const isHidden = settingsPanel?.style.display === 'none';
    if (settingsPanel) settingsPanel.style.display = isHidden ? 'block' : 'none';
});

const dropZone = document.getElementById('drop-zone');
const loadButton = document.getElementById('load-button');
const fileInput = document.getElementById('file-input') as HTMLInputElement;

loadButton?.addEventListener('click', () => fileInput.click());

fileInput?.addEventListener('change', () => {
  if (fileInput.files) processFiles(fileInput.files);
});

['dragenter', 'dragover'].forEach(eventName => {
  dropZone?.addEventListener(eventName, (e: any) => {
    e.preventDefault();
    e.stopPropagation();
    dropZone.classList.add('dragover');
  });
});

['dragleave', 'drop'].forEach(eventName => {
  dropZone?.addEventListener(eventName, (e: any) => {
    e.preventDefault();
    e.stopPropagation();
    dropZone.classList.remove('dragover');
  });
});

dropZone?.addEventListener('drop', async (e: DragEvent) => {
  const files = e.dataTransfer?.files;
  if (files) processFiles(files);
});


async function processFiles(files: FileList | File[]) {
  const resultsDiv = document.getElementById('results');
  if (resultsDiv) resultsDiv.innerHTML = '<p>Preparing validation session...</p>';

  const fileList = Array.from(files);
  const session = new ValidationSession();
  const sessionResults = new Map<string, any>();
  
  // Apply URI mappings from settings
  try {
      const mappingText = uriMappingInput.value.trim();
      if (mappingText) {
          const mapping = JSON.parse(mappingText);
          for (const [oldUri, newUri] of Object.entries(mapping)) {
              session.setUriMapping(oldUri, newUri as string);
          }
      }
  } catch (e) {
      console.error('Invalid URI mapping JSON', e);
  }

  // Pass 1: Build global node map
  const fileData = await Promise.all(fileList.map(async f => ({ name: f.name, content: await f.text(), file: f })));
  await session.registerFiles(fileData);

  if (resultsDiv) {
      resultsDiv.innerHTML = `
        <div class="session-actions" style="margin-bottom: 20px; display: flex; gap: 10px;">
            <button id="download-report" style="padding: 8px 16px; background: #28a745; color: white; border: none; border-radius: 4px; cursor: pointer;">Download Report (.md)</button>
            <button onclick="window.print()" style="padding: 8px 16px; background: #17a2b8; color: white; border: none; border-radius: 4px; cursor: pointer;">Print to PDF</button>
        </div>
      `;
      
      document.getElementById('download-report')?.addEventListener('click', () => {
          const md = ReportGenerator.generateMarkdown(session, sessionResults);
          const blob = new Blob([md], { type: 'text/markdown' });
          const url = URL.createObjectURL(blob);
          const a = document.createElement('a');
          a.href = url;
          a.download = `validation-report-${new Date().getTime()}.md`;
          a.click();
          URL.revokeObjectURL(url);
      });
  }

  for (const item of fileData) {
    const { name, content } = item;
    const fileContainer = document.createElement('div');
    fileContainer.className = 'file-container';
    fileContainer.style.marginBottom = '40px';
    resultsDiv?.appendChild(fileContainer);
    
    try {
      const parser = new XmiParser();
      const evaluator = new ConstraintEvaluator(parser, generatedUmlConstraints, session);
      const toolRule = new ToolSpecificExtensionRule(parser);
      const docRule = new StereotypeDocumentationRule(parser);
      const outdatedRefRule = new OutdatedStandardReferenceRule(parser);
      const consistencyRule = new UmlConsistencyRule(parser, session);
      const xmiSpecRule = new XmiSpecComplianceRule();
      
      parser.parse(content);
      xmiSpecRule.validate(session);
      
      const results = {
          xmiSpecErrors: [...session.errors],
          proprietaryWarnings: toolRule.getWarnings(),
          docWarnings: docRule.getWarnings(),
          versionWarnings: outdatedRefRule.getWarnings(),
          consistencyErrors: consistencyRule.getErrors(),
          umlConstraints: evaluator.getErrors()
      };
      
      const allErrors = [...results.umlConstraints, ...results.consistencyErrors, ...results.xmiSpecErrors];
      sessionResults.set(name, { ...results, allErrors });
      
      let html = `<h2>Validation Results for ${name}</h2>`;
      
      if (allErrors.length === 0 && results.proprietaryWarnings.length === 0 && results.docWarnings.length === 0 && results.versionWarnings.length === 0) {
         html += `<p style="color: green; font-weight: bold;">✓ Validation passed with 0 errors!</p>`;
      } else {
            const escapeHtml = (text: string) => {
                const div = document.createElement('div');
                div.textContent = text;
                return div.innerHTML;
            };

            const listFormatter = (items: string[], title: string, color: string) => {
                if (items.length === 0) return '';
                return `<div style="border: 1px solid ${color}; padding: 15px; margin-top: 15px; border-radius: 8px; background: rgba(0,0,0,0.02);">
                         <h3 style="color: ${color}; margin-top: 0;">${title} (${items.length})</h3>
                         <ul style="max-height: 400px; overflow-y: auto; padding-left: 20px;">
                           ${items.map(i => {
                               const lineMatch = i.match(/line (\d+)/i);
                               const lineNum = lineMatch ? parseInt(lineMatch[1]) : null;
                               return `<li style="margin-bottom: 5px;">
                                    ${escapeHtml(i)} 
                                    ${lineNum ? `<a href="#" class="show-code" data-file-name="${escapeHtml(name)}" data-line="${lineNum}" style="margin-left: 10px; color: ${color}; font-size: 0.85em;">[Show in Code]</a>` : ''}
                               </li>`;
                           }).join('')}
                         </ul>
                       </div>`;
            };
         html += listFormatter(results.xmiSpecErrors, 'XMI 2.5.1 Specification (Mandatory)', '#a52a2a');
         html += listFormatter(results.proprietaryWarnings, 'Proprietary Extensions (Critical)', '#cc0000');
         html += listFormatter(results.versionWarnings, 'Outdated Specification References (Critical)', '#dd5500');
         html += listFormatter([...results.umlConstraints, ...results.consistencyErrors], 'Structural UML Constraints (Errors)', '#ff8c00');
         html += listFormatter(results.docWarnings, 'Model Quality (Warnings)', '#888800');
         
         html += `<div style="margin-top: 20px;">
                    <button class="canonical-btn" style="padding: 10px 20px; cursor: pointer; background: #444; color: white; border: none; border-radius: 6px; font-weight: bold;">Canonicalize & Download (XMI 2.5.1)</button>
                  </div>`;
      }
      
      fileContainer.innerHTML = html;

      // Add listener for code view links
      fileContainer.querySelectorAll('.show-code').forEach(link => {
          link.addEventListener('click', (e) => {
              e.preventDefault();
              const line = parseInt((link as HTMLElement).dataset.line || '0');
              const allFileIssues = [
                  ...results.xmiSpecErrors.map(e => ({ line: parseInt(e.match(/line (\d+)/)?.[1] || '0'), message: e, type: 'error' as const })),
                  ...results.proprietaryWarnings.map(w => ({ line: parseInt(w.match(/line (\d+)/)?.[1] || '0'), message: w, type: 'critical' as const })),
                  ...results.versionWarnings.map(w => ({ line: parseInt(w.match(/line (\d+)/)?.[1] || '0'), message: w, type: 'critical' as const })),
                  ...results.docWarnings.map(w => ({ line: parseInt(w.match(/line (\d+)/)?.[1] || '0'), message: w, type: 'warning' as const })),
                  ...[...results.umlConstraints, ...results.consistencyErrors].map(e => ({ line: parseInt(e.match(/line (\d+)/)?.[1] || '0'), message: e, type: 'error' as const }))
              ].filter(i => i.line > 0);
              CodeViewer.show(name, content, line, allFileIssues);
          });
      });

      fileContainer.querySelector('.canonical-btn')?.addEventListener('click', async () => {
        const progress = new ProgressDialog();
        const controller = new AbortController();
        
        progress.show('Canonicalizing XMI...', () => {
             controller.abort();
             console.log('Canonicalization cancelled by user');
        });

        try {
            const renumberer = new CanonicalRenumberer();
            const idMap = await renumberer.buildIdMap(
                content, 
                (p) => progress.update(p, 'Building ID Map...'),
                controller.signal
            );
            
            const newXmi = await renumberer.renumber(
                content, 
                idMap, 
                (p) => progress.update(p, 'Applying Canonicalization...'),
                controller.signal
            );
            
            const blob = new Blob([newXmi], { type: 'application/xml' });
            const url = URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = `canonical-${name}`;
            a.click();
            URL.revokeObjectURL(url);
        } catch (err: any) {
            if (err.message !== 'Operation cancelled') {
                alert(`Error during canonicalization: ${err.message}`);
            }
        } finally {
            progress.hide();
        }
      });
    } catch (err: any) {
      fileContainer.innerHTML = `<h3>${name}</h3><p style="color:red">Error parsing file: ${err.message}</p>`;
    }
  }
}
