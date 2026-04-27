export interface CodeIssue {
    line: number;
    message: string;
    type: 'error' | 'warning' | 'critical';
}

export class CodeViewer {
    public static show(name: string, content: string, targetLine: number, issues: CodeIssue[]) {
        const overlay = document.createElement('div');
        overlay.className = 'modal-overlay';
        
        // Map line numbers to issues for quick lookup
        const issueMap = new Map<number, CodeIssue[]>();
        issues.forEach(issue => {
            if (!issueMap.has(issue.line)) issueMap.set(issue.line, []);
            issueMap.get(issue.line)!.push(issue);
        });

        const contentLines = content.split('\n');
        let codeHtml = '';
        contentLines.forEach((line, idx) => {
            const lineNum = idx + 1;
            const lineIssues = issueMap.get(lineNum) || [];
            const hasIssue = lineIssues.length > 0;
            const isTarget = lineNum === targetLine;
            
            // Determine highlight class based on highest severity issue on the line
            let highlightClass = '';
            if (hasIssue) {
                const hasError = lineIssues.some(i => i.type === 'error' || i.type === 'critical');
                highlightClass = hasError ? 'line-highlight-error' : 'line-highlight-warning';
            }
            if (isTarget) highlightClass += ' line-highlight-target';

            codeHtml += `<div class="code-line ${highlightClass}" id="line-${lineNum}" data-line="${lineNum}" style="${hasIssue ? 'cursor: pointer;' : ''}">
                <div class="line-number">${lineNum}</div>
                <div class="line-content">${this.escapeHtml(line)}</div>
            </div>`;
        });

        overlay.innerHTML = `
            <div class="modal-content">
                <div class="modal-header">
                    <div style="flex-grow: 1;">
                        <h3 style="margin: 0 0 5px 0;">Source View: ${name}</h3>
                        <div id="issue-dashboard" class="issue-dashboard">
                            <span style="opacity: 0.6;">Select a highlighted line to view details</span>
                        </div>
                    </div>
                    <div style="display: flex; gap: 10px; align-items: flex-start; margin-left: 20px;">
                        <button id="copy-code-btn" style="padding: 5px 10px; cursor: pointer; background: #eee; border: 1px solid #ccc; border-radius: 4px; font-size: 0.8em; white-space: nowrap;">Copy Code</button>
                        <span class="modal-close" style="line-height: 0.8;">&times;</span>
                    </div>
                </div>
                <div class="code-view">${codeHtml}</div>
            </div>
        `;

        document.body.appendChild(overlay);

        const dashboard = overlay.querySelector('#issue-dashboard') as HTMLElement;

        // Scroll to target line
        setTimeout(() => {
            const lineEl = document.getElementById(`line-${targetLine}`);
            lineEl?.scrollIntoView({ block: 'center', behavior: 'smooth' });
            
            // Auto-show message for target line if it has one
            const targetIssues = issueMap.get(targetLine);
            if (targetIssues) {
                this.updateDashboard(dashboard, targetIssues);
            }
        }, 100);

        const close = () => {
            overlay.classList.add('fade-out');
            setTimeout(() => document.body.removeChild(overlay), 200);
        };

        overlay.querySelector('.modal-close')?.addEventListener('click', close);
        overlay.addEventListener('click', (e) => { if (e.target === overlay) close(); });

        // Add issue click listeners
        overlay.querySelectorAll('.code-line').forEach(lineEl => {
            const lineNum = parseInt((lineEl as HTMLElement).dataset.line || '0');
            const lineIssues = issueMap.get(lineNum);
            if (lineIssues) {
                lineEl.addEventListener('click', () => {
                    this.updateDashboard(dashboard, lineIssues);
                    // Update active highlight style
                    overlay.querySelectorAll('.code-line').forEach(el => el.classList.remove('line-active-selection'));
                    lineEl.classList.add('line-active-selection');
                });
            }
        });

        overlay.querySelector('#copy-code-btn')?.addEventListener('click', () => {
            navigator.clipboard.writeText(content).then(() => {
                const btn = document.getElementById('copy-code-btn');
                if (btn) {
                    const originalText = btn.textContent;
                    btn.textContent = 'Copied!';
                    btn.style.background = '#d4edda';
                    setTimeout(() => {
                        btn.textContent = originalText;
                        btn.style.background = '#eee';
                    }, 2000);
                }
            });
        });
    }

    private static updateDashboard(el: HTMLElement, issues: CodeIssue[]) {
        el.innerHTML = issues.map(issue => {
            const color = (issue.type === 'error' || issue.type === 'critical') ? '#dc3545' : '#856404';
            const icon = (issue.type === 'error' || issue.type === 'critical') ? '❌' : '⚠️';
            return `<div style="color: ${color}; font-weight: bold; margin-bottom: 4px; font-size: 0.9em;">
                ${icon} ${this.escapeHtml(issue.message)}
            </div>`;
        }).join('');
    }

    private static escapeHtml(text: string): string {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    }
}
