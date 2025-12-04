Place GLPK offline assets in this directory when packaging the scheduler for local use.
Required files (recommended source: https://github.com/jvail/glpk.js):
- glpk.min.js (UMD build)
- glpk.wasm (corresponding WebAssembly binary)

Serve v1.14.html over a local HTTP server (see StartScheduler.bat). The app loads GLPK from ./libs/ first and only falls back to remote sources if the local files are missing.
