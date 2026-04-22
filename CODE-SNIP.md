# Code Snip App - Markdown Control File

This Markdown file is the source of truth for how the Code Snip App should scan, analyze, and organize the code snippet workspace and generate its dynamic web app UI. Follow the robust conventions and requirements below.

## Organization Rules & Behavior (Mandatory)

The IDE and Web App must adhere strictly to these 12 core requirements to ensure a clean, well-mannered structure with no clumsy or chaotic folder layout.

### 1) Structured Organization
Every code file and folder must be organized in a well-mannered way. No chaotic or clumsy structures.
- Each programming or scripting language gets its own top-level folder under `snips/`.
- Each snippet lives in its own folder with a short, descriptive slug.
- No files at the project root except this control file (`CODE-SNIP.md`), `README.md`, and the web app (`index.html`).
- Use lowercase, hyphenated names for folders and files.

### 2) Dynamic UI Themes
The UI must provide dynamic and customizable themes to adjust the visual appearance (e.g., dark, light, neon, different color accents).

### 3) AI Assistant Integration
The app must suggest a Gemini AI assistant or Codex whenever a code snippet is noted, for fixing issues like bugs, debugging, errors, and helping to achieve the best result by improving the code lines.

### 4) Language Download System
The app must have a language list of various programming and scripting languages available for the user to download, in order to note down snippets in that specific language.

### 5) Note Block & Pop-Menus
The entire code snippet should be noted in a central "note block" editor on the page. The top-right corner of this note block must have two pop-menus:
- **Language Selector:** To select the specific language for the snippet.
- **AI Assistant Selector:** To choose between Gemini or Codex for making the snippet better.

### 6) Restricted Language Menu
The pop-menus must only contain the languages the user has "downloaded" from their language list or the built-in free languages.

### 7) Built-in Free Languages
The app includes 9 free, built-in languages that the user can use immediately without downloading:
- Python
- C++
- C
- MarkDown
- Java
- Javascript
- HTML
- CSS
- XML

### 8) AI Language Sync
The language list ensures the AI assistants (Gemini and Codex) can accurately improve the noted code snippet using the specific, downloaded (or built-in) language the user selected.

### 9) Gemini vs. Codex Selection
The AI Assistant pop-menu allows selecting between:
- **Gemini:** Used for making code snippets better related to UIs and frontend.
- **Codex:** Used for more improved logic functions and backend functions.

### 10) Note-Taking Experience
The user can copy-paste code or simply write code directly into the note block, making the app feel like a note-taking app while also helping the user become better at writing code.

### 11) Sidebar Navigation & Rendering
Created folders of code snippets must appear on a side menu on the left side. The language folder must also contain a toggle (dropdown/expand) revealing the code snippets stored within that folder.

### 12) Live Navigation
Clicking on a code snippet inside the toggle folder in the left sidebar must navigate directly to that code snippet in the main editor.
