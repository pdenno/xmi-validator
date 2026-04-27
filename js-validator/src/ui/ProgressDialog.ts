export class ProgressDialog {
    private modal: HTMLDivElement | null = null;
    private progressBar: HTMLProgressElement | null = null;
    private progressText: HTMLSpanElement | null = null;
    private onCancel: (() => void) | null = null;

    public show(title: string, onCancel: () => void) {
        this.onCancel = onCancel;
        this.createElements(title);
        if (this.modal) {
            document.body.appendChild(this.modal);
            this.modal.style.display = 'flex';
        }
    }

    public update(percent: number, message?: string) {
        if (this.progressBar) {
            this.progressBar.value = percent;
        }
        if (this.progressText) {
            this.progressText.textContent = `${Math.round(percent)}% ${message || ''}`;
        }
    }

    public hide() {
        if (this.modal && this.modal.parentNode) {
            this.modal.parentNode.removeChild(this.modal);
        }
    }

    private createElements(title: string) {
        this.modal = document.createElement('div');
        this.modal.className = 'modal-overlay progress-modal';
        this.modal.style.cssText = `
            position: fixed; top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0,0,0,0.5); display: none; justify-content: center; align-items: center; z-index: 10000;
        `;

        const content = document.createElement('div');
        content.className = 'modal-content';
        content.style.cssText = `
            background: var(--bg); color: var(--text); padding: 30px; border-radius: 12px;
            width: 400px; box-shadow: 0 10px 30px rgba(0,0,0,0.3); text-align: center;
        `;

        const h2 = document.createElement('h2');
        h2.textContent = title;
        h2.style.marginTop = '0';
        content.appendChild(h2);

        this.progressBar = document.createElement('progress');
        this.progressBar.max = 100;
        this.progressBar.value = 0;
        this.progressBar.style.width = '100%';
        this.progressBar.style.height = '12px';
        this.progressBar.style.marginBottom = '15px';
        content.appendChild(this.progressBar);

        this.progressText = document.createElement('span');
        this.progressText.textContent = '0%';
        this.progressText.style.display = 'block';
        this.progressText.style.marginBottom = '20px';
        content.appendChild(this.progressText);

        const cancelBtn = document.createElement('button');
        cancelBtn.textContent = 'Cancel';
        cancelBtn.style.cssText = `
            padding: 8px 24px; cursor: pointer; background: #dc3545; color: white;
            border: none; border-radius: 6px; font-weight: bold;
        `;
        cancelBtn.onclick = () => {
            if (this.onCancel) this.onCancel();
            this.hide();
        };
        content.appendChild(cancelBtn);

        this.modal.appendChild(content);
    }
}
