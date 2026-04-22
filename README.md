# Code Snip App

A robust, AI-integrated web application and workspace for noting down code snippets across various programming and scripting languages.

## Overview

The Code Snip App provides a premium, dark-themed UI (with dynamic theme switching) that acts as both a note-taking application and a smart IDE. It features built-in simulated integrations with **Gemini** (for frontend/UI) and **Codex** (for backend/logic) to help debug, improve, and refine your code.

## Running the App

1. Simply open `index.html` in your favorite modern web browser.
2. Since all data is stored via `localStorage`, there is no backend server required. Your snippets stay secure in your browser.

## Features

- **Organized Workspace**: Snippets are auto-organized by language into a clean, hierarchical sidebar.
- **Note Block Editor**: A distraction-free coding area where you can write or paste code.
- **AI Assistants**: Use Gemini or Codex to analyze your code snippet directly from the editor's top-right corner.
- **Language Manager**: Start with 9 built-in languages (Python, C++, Java, etc.) and "download" more via the Settings panel.
- **Dynamic Themes**: Choose from multiple built-in color themes to match your preference.
- **Live Navigation**: Instantly jump between snippets using the left sidebar.

## Structure

```text
Code-snippet app/
├── index.html        ← The main web application
├── CODE-SNIP.md      ← The strict control rules and requirements
├── README.md         ← Project overview
└── snips/            ← Your local snippet backup directory (optional)
```

## Control File

See [`CODE-SNIP.md`](./CODE-SNIP.md) for the 12 strict organization rules and conventions that this IDE respects.
