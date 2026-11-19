# Tahák: Kombinace nástrojů ve VS Code (A4 na šířku)

<table>
<tr>
<td width="50%" valign="top">

## 1. GitHub Copilot Pro + Google AI Plus

**Strategie:** _Výkon a špičkové modely z Copilot Pro + velký kontext a hromadné úpravy z Antigravity._

### Rozdělení rolí

- **Psaní a doplňování kódu:** **Copilot Pro** (_Next Edit Suggestions_ je neomezené, nečerpá kredity).
- **Složitá architektura a těžké bugy:** **Copilot Pro** (přístup k modelům Claude Sonnet 5.5, GPT-6 Luna, Gemini 4 Argon).
- **Refaktoring, testy a dokumentace:** **Antigravity** (Gemini 3.8 Flash – šetříte kredity v Copilotu).
- **Práce s celým repozitářem:** **Antigravity** (kontext až 1M tokenů v základu bez příplatku).
- **Pull Requesty a Code Review:** **Copilot Pro** (Cloud agent přímo na GitHubu).

### Nastavení VS Code & Tip pro úsporu

- **Našeptávání (Tab):** Zapnout pouze v **Copilot Pro**, v Antigravity vypnout (zamezíte přepisování návrhů).
- **Klávesové zkratky:**
  - `Ctrl + Alt + I` → Copilot Chat (architektura, složité dotazy)
  - `Ctrl + L` → Antigravity panel (agentní úpravy souborů)
- **Správa limitů:** V Copilot Pro máte **1 500 kreditů/měsíc**. Drahé modely používejte jen na klíčové problémy, rutinu delegujte na Antigravity.

</td>
<td width="50%" valign="top">

## 2. GitHub Copilot Free + Google AI Plus

**Strategie:** _Antigravity jako hlavní motor vývoje + Copilot Free a webové Gemini jako chytrá záloha._

### Rozdělení rolí

- **Psaní a doplňování kódu:** **Antigravity** (neomezené _Tab completions_, ušetříte přísný limit Copilotu).
- **Agentní úpravy, refaktoring a testy:** **Antigravity** (Gemini 3.8 Flash – hlavní tahoun pro každodenní kódování).
- **Rychlé dotazy a vysvětlení syntaxe:** **Copilot Free** (využijte ~50 chat zpráv/měsíc na odlehčení kvóty Antigravity).
- **Složitá architektura a návrh:** **Webová aplikace Gemini** (v tarifu AI Plus máte na webu přístup k modelům Gemini 4).
- **Záloha na konec týdne:** **Copilot Free** (zapnout našeptávání až ve chvíli, kdy vyčerpáte týdenní limit Antigravity).

### Nastavení VS Code & Tip pro úsporu

- **Našeptávání (Tab):** Zapnout pouze v **Antigravity**, v Copilot Free ve výchozím stavu vypnout (šetříte limit **2 000 doplnění/měsíc**).
- **Klávesové zkratky:**
  - `Ctrl + L` → Antigravity panel (hlavní pracovní plocha)
  - `Ctrl + Alt + I` → Copilot Chat (rychlé dotazy záloha)
- **Správa limitů:** V Antigravity držte _Thinking level_ na **Low/Medium**. Úroveň **High** zapínejte jen pro ladění složitých chyb, ať vám vystačí týdenní kvóta.

</td>
</tr>
</table>

---

_Tip pro tisk do PDF z VS Code: Otevřete náhled Markdownu (`Ctrl+Shift+V`), klikněte pravým tlačítkem do okna a zvolte tisk (nebo použijte rozšíření **Markdown PDF**), nastavte orientaci **Na šířku (Landscape)** a okraje na **Minimální**._
