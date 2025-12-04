Place offline dependencies in this directory when packaging the scheduler for local use.
Required files (recommended versions):
- tailwind.min.css (Tailwind CSS build used by the UI)
- react.production.min.js (React 18 UMD build)
- react-dom.production.min.js (React DOM 18 UMD build)
- babel.min.js (Babel standalone for in-browser JSX transpilation)
- exceljs.min.js (ExcelJS 4.x for Excel export)
- FileSaver.min.js (FileSaver 2.x for Excel export)
- glpk.esm.js (GLPK ESM build, e.g., glpk.js@4.0.2)
- glpk.wasm (corresponding GLPK WebAssembly binary)

When serving v1.14.html over a local HTTP server (see StartScheduler.bat), the app will first try these local files and only fallback to CDN sources if they are missing.
