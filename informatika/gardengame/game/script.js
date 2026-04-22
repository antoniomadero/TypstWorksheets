/* ══════════════════════════════════════════
   LINE NUMBERS
══════════════════════════════════════════ */
const codeEl       = document.getElementById('code');
const lineNumsEl   = document.getElementById('lineNumbers');

function updateLineNumbers() {
    const lines = codeEl.value.split('\n').length;
    let nums = '';
    for (let i = 1; i <= lines; i++) nums += i + '\n';
    lineNumsEl.textContent = nums;

    // Keep scroll in sync
    lineNumsEl.scrollTop = codeEl.scrollTop;
}

codeEl.addEventListener('input',  updateLineNumbers);
codeEl.addEventListener('scroll', () => { lineNumsEl.scrollTop = codeEl.scrollTop; });
codeEl.addEventListener('keydown', (e) => {
    // Tab inserts 2 spaces instead of focus-change
    if (e.key === 'Tab') {
        e.preventDefault();
        const s = codeEl.selectionStart;
        codeEl.value = codeEl.value.substring(0, s) + '  ' + codeEl.value.substring(codeEl.selectionEnd);
        codeEl.selectionStart = codeEl.selectionEnd = s + 2;
        updateLineNumbers();
    }
});

updateLineNumbers();


/* ══════════════════════════════════════════
   ZOOM
══════════════════════════════════════════ */
let zoomLevel = 100;
const ZOOM_STEP = 10;
const ZOOM_MIN  = 60;
const ZOOM_MAX  = 220;

function applyZoom() {
    const px = Math.round(14 * zoomLevel / 100);
    codeEl.style.fontSize     = px + 'px';
    lineNumsEl.style.fontSize = px + 'px';
    // keep line heights in sync
    codeEl.style.lineHeight     = '1.6';
    lineNumsEl.style.lineHeight = '1.6';
    document.getElementById('zoomLabel').textContent = zoomLevel + '%';
}

document.getElementById('zoomIn').addEventListener('click', () => {
    if (zoomLevel < ZOOM_MAX) { zoomLevel += ZOOM_STEP; applyZoom(); }
});
document.getElementById('zoomOut').addEventListener('click', () => {
    if (zoomLevel > ZOOM_MIN) { zoomLevel -= ZOOM_STEP; applyZoom(); }
});
document.getElementById('zoomReset').addEventListener('click', () => {
    zoomLevel = 100; applyZoom();
});

// Ctrl+scroll zoom
document.querySelector('.editor-wrapper').addEventListener('wheel', (e) => {
    if (e.ctrlKey || e.metaKey) {
        e.preventDefault();
        if (e.deltaY < 0 && zoomLevel < ZOOM_MAX) zoomLevel += ZOOM_STEP;
        if (e.deltaY > 0 && zoomLevel > ZOOM_MIN) zoomLevel -= ZOOM_STEP;
        applyZoom();
    }
}, { passive: false });


/* ══════════════════════════════════════════
   EXPORT TXT
══════════════════════════════════════════ */
function exportTxt() {
    const text = codeEl.value;
    const blob = new Blob([text], { type: 'text/plain;charset=utf-8' });
    const a    = document.createElement('a');
    a.href     = URL.createObjectURL(blob);
    a.download = 'zahradni-kod.txt';
    a.click();
    URL.revokeObjectURL(a.href);
}


/* ══════════════════════════════════════════
   EXPORT PNG  (canvas screenshot of editor)
══════════════════════════════════════════ */
function exportImg() {
    const lines   = codeEl.value.split('\n');
    const fs      = Math.round(14 * zoomLevel / 100);
    const lh      = Math.round(fs * 1.6);
    const padding = 14;
    const numW    = 40;

    const canvas  = document.createElement('canvas');
    const lineCount = lines.length;
    canvas.width  = 700;
    canvas.height = padding * 2 + lineCount * lh;

    const ctx = canvas.getContext('2d');

    // Background
    ctx.fillStyle = '#1e1e1e';
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Line-number gutter
    ctx.fillStyle = '#2a2a2a';
    ctx.fillRect(0, 0, numW, canvas.height);

    ctx.font = `${fs}px 'Courier New', monospace`;

    lines.forEach((line, i) => {
        const y = padding + i * lh + fs;

        // Line number
        ctx.fillStyle = '#666';
        ctx.textAlign = 'right';
        ctx.fillText(i + 1, numW - 6, y);

        // Code
        ctx.fillStyle = '#d4d4d4';
        ctx.textAlign = 'left';
        ctx.fillText(line, numW + 10, y);
    });

    const a    = document.createElement('a');
    a.href     = canvas.toDataURL('image/png');
    a.download = 'zahradni-kod.png';
    a.click();
}


/* ══════════════════════════════════════════
   GARDEN
══════════════════════════════════════════ */
function initGarden() {
    const garden = document.getElementById('garden');
    garden.innerHTML = '';
    for (let y = 0; y < 8; y++) {
        for (let x = 0; x < 8; x++) {
            const cell = document.createElement('div');
            cell.className = 'cell';
            cell.title = `(${x}, ${y}, prázdné)`;
            cell.dataset.x = x;
            cell.dataset.y = y;
            cell.dataset.content = 'prázdné';
            garden.appendChild(cell);
        }
    }
}

function osej(x, y, plodina) {
    if (x < 0 || x > 7 || y < 0 || y > 7) {
        console.error('Neplatné souřadnice!');
        return;
    }
    const cell = document.querySelector(`[data-x="${x}"][data-y="${y}"]`);
    if (cell) {
        cell.className = 'cell ' + plodina;
        cell.dataset.content = plodina;
        cell.title = `(${x}, ${y}, ${plodina})`;
    }
}


/* ══════════════════════════════════════════
   CODE EXECUTOR
══════════════════════════════════════════ */
class CodeExecutor {
    constructor() { this.variables = {}; }

    evaluateValue(value) {
        if (this.variables.hasOwnProperty(value)) return this.variables[value];
        return parseInt(value);
    }

    processCommand(line) {
        line = line.trim();

        const assignmentMatch = line.match(/(\w+)\s*=\s*(\d+|\w+)/);
        if (assignmentMatch) {
            const [_, variable, value] = assignmentMatch;
            this.variables[variable] = this.evaluateValue(value);
            return;
        }

        const incrementMatch = line.match(/(\w+)\s*([+-])(\d+)/);
        if (incrementMatch) {
            const [_, variable, operator, amount] = incrementMatch;
            if (this.variables.hasOwnProperty(variable)) {
                if (operator === '+') this.variables[variable] += parseInt(amount);
                else if (operator === '-') this.variables[variable] -= parseInt(amount);
            }
            return;
        }

        if (line.startsWith('osej')) {
            const match = line.match(/osej\((\w+)\s*,\s*(\w+)\s*,\s*(\w+)\)/);
            if (match) {
                const [_, xVar, yVar, plodina] = match;
                osej(this.evaluateValue(xVar), this.evaluateValue(yVar), plodina);
            }
        }
    }

    executeBlock(lines, startIndex) {
        let i = startIndex;
        const commands = [];
        let nestedLevel = 0;

        while (i < lines.length) {
            const line = lines[i].trim();
            if (line.startsWith('opakuj')) nestedLevel++;
            if (line.endsWith(';')) {
                nestedLevel--;
                if (nestedLevel < 0) {
                    commands.push(line.slice(0, -1));
                    return [commands, i];
                }
            }
            commands.push(line);
            i++;
        }
        return [commands, i];
    }

    executeCommands(commands) {
        let i = 0;
        while (i < commands.length) {
            const command = commands[i].trim();
            if (command.startsWith('opakuj')) {
                const match = command.match(/opakuj\((\d+)\):/);
                if (match) {
                    const repeatCount = parseInt(match[1]);
                    const [blockCommands, endIndex] = this.executeBlock(commands, i + 1);
                    for (let j = 0; j < repeatCount; j++) this.executeCommands(blockCommands);
                    i = endIndex + 1;
                    continue;
                }
            } else {
                this.processCommand(command);
            }
            i++;
        }
    }

    execute(code) {
        const lines = code.split('\n').map(l => l.trim()).filter(l => l);
        this.executeCommands(lines);
    }
}

function executeCode() {
    const code = codeEl.value;
    initGarden();
    const executor = new CodeExecutor();
    try { executor.execute(code); }
    catch (error) { console.error('Chyba při provádění kódu:', error); }
}

initGarden();