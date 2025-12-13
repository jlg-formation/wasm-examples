# Plan de couverture QCM - Exemples WebAssembly

Ce document analyse la couverture des questions du QCM par les exemples
existants dans le repository.

## Légende

- ✅ : Question couverte par un exemple existant
- ❌ : Aucun exemple existant - à créer
- ⚠️ : Partiellement couvert

---

## Chapitre 1 : Introduction à WASM (j1-matin-intro)

| #   | ID  | Question QCM                                | Couvert ? | Exemple existant                 | Exemple à créer |
| --- | --- | ------------------------------------------- | --------- | -------------------------------- | --------------- |
| 1   | q1  | Avantage de WASM pour les calculs intensifs | ✅        | `01-wat/01-export/`              | -               |
| 2   | q2  | Organisation W3C standardisation            | ✅        | `docs/01-w3c-standardisation.md` | -               |
| 3   | q3  | Signification de WASI                       | ✅        | `03-wasi/01-hello/`              | -               |
| 4   | q4  | Outil wat2wasm (WABT)                       | ✅        | `01-wat/*/Makefile`              | -               |
| 5   | q5  | Bytecode Alliance                           | ✅        | `docs/02-bytecode-alliance.md`   | -               |
| 6   | q6  | Sécurité sandbox                            | ✅        | `01-wat/16-sandbox/`             | -               |
| 7   | q7  | Portabilité des modules                     | ✅        | Tous les exemples                | -               |
| 8   | q8  | Format fichier .wasm                        | ✅        | `01-wat/01-export/`              | -               |
| 9   | q9  | Runtimes hors navigateur                    | ✅        | `03-wasi/01-hello/`              | -               |
| 10  | q10 | Problématique historique JS                 | ✅        | `docs/03-wasm-history.md`        | -               |
| 11  | q11 | Structure binaire module                    | ✅        | `01-wat/13-export-section/`      | -               |
| 12  | q12 | Isolation mémoire                           | ✅        | `01-wat/05-memory/`              | -               |
| 13  | q13 | Spécification Core                          | ✅        | `docs/04-wasm-core-spec.md`      | -               |
| 14  | q14 | Format de compilation cible                 | ✅        | `02-emscripten/02-library/`      | -               |
| 15  | q15 | asm.js prédécesseur                         | ✅        | `docs/05-asmjs-history.md`       | -               |
| 16  | q16 | Temps de démarrage WASM                     | ✅        | `docs/06-wasm-startup-time.md`   | -               |
| 17  | q17 | Applications bénéficiaires                  | ✅        | `01-wat/17-performance/`         | -               |
| 18  | q18 | Accès DOM via JS                            | ✅        | `01-wat/02-import/`              | -               |
| 19  | q19 | Sécurité sandbox JS                         | ✅        | `docs/07-wasm-security.md`       | -               |
| 20  | q20 | Magic number 0x00 61 73 6D                  | ✅        | `01-wat/18-binary-format/`       | -               |

**Résumé Chapitre 1:** 20/20 couverts (100%)

---

## Chapitre 2 : Le langage textuel WAT (j1-aprem-wat)

| #   | ID      | Question QCM                 | Couvert ? | Exemple existant                    | Exemple à créer |
| --- | ------- | ---------------------------- | --------- | ----------------------------------- | --------------- |
| 1   | wat_q1  | Format WAT vs WASM           | ✅        | `01-wat/01-export/add.wat`          | -               |
| 2   | wat_q2  | Fonction export avec params  | ✅        | `01-wat/01-export/add.wat`          | -               |
| 3   | wat_q3  | Modèle stack machine         | ✅        | `01-wat/01-export/add.wat`          | -               |
| 4   | wat_q4  | Déclaration mémoire 1 page   | ✅        | `01-wat/05-memory/memory.wat`       | -               |
| 5   | wat_q5  | Instruction i32.load         | ✅        | `01-wat/05-memory/memory.wat`       | -               |
| 6   | wat_q6  | Import fonction JS           | ✅        | `01-wat/02-import/import.wat`       | -               |
| 7   | wat_q7  | Boucle loop/br               | ✅        | `01-wat/07-loop/loop.wat`           | -               |
| 8   | wat_q8  | Instruction unreachable/trap | ✅        | `01-wat/10-trap/trap.wat`           | -               |
| 9   | wat_q9  | Global mutable               | ✅        | `01-wat/03-global/global.wat`       | -               |
| 10  | wat_q10 | Différence block/loop        | ✅        | `01-wat/07-loop/loop.wat`           | -               |
| 11  | wat_q11 | Extension VS Code            | ✅        | `docs/08-vscode-extensions.md`      | -               |
| 12  | wat_q12 | Addition i32.add             | ✅        | `01-wat/01-export/add.wat`          | -               |
| 13  | wat_q13 | Instruction i32.store        | ✅        | `01-wat/05-memory/memory.wat`       | -               |
| 14  | wat_q14 | Instruction br_if            | ✅        | `01-wat/08-condition/condition.wat` | -               |
| 15  | wat_q15 | Retour valeur pile           | ✅        | `01-wat/01-export/add.wat`          | -               |
| 16  | wat_q16 | Types i32/i64/f32/f64        | ✅        | `01-wat/01-export/add.wat`          | -               |
| 17  | wat_q17 | Variable locale              | ✅        | `01-wat/19-locals/`                 | -               |
| 18  | wat_q18 | Instruction call             | ✅        | `01-wat/09-recursion/factorial.wat` | -               |
| 19  | wat_q19 | Table funcref                | ✅        | `01-wat/11-table/table.wat`         | -               |
| 20  | wat_q20 | call_indirect                | ✅        | `01-wat/11-table/table.wat`         | -               |

**Résumé Chapitre 2:** 20/20 couverts (100%)

---

## Chapitre 3 : Runtimes WASM et API JavaScript (j2-matin-runtimes)

| #   | ID          | Question QCM                  | Couvert ? | Exemple existant               | Exemple à créer |
| --- | ----------- | ----------------------------- | --------- | ------------------------------ | --------------- |
| 1   | runtime_q1  | Rôle runtime                  | ✅        | `01-wat/*/wrapper.mjs`         | -               |
| 2   | runtime_q2  | WebAssembly.compile()         | ✅        | `01-wat/*/wrapper.mjs`         | -               |
| 3   | runtime_q3  | WebAssembly.instantiate()     | ✅        | `01-wat/02-import/wrapper.mjs` | -               |
| 4   | runtime_q4  | Wasmtime (Bytecode Alliance)  | ✅        | `03-wasi/01-hello/`            | -               |
| 5   | runtime_q5  | instance.exports              | ✅        | `01-wat/01-export/wrapper.mjs` | -               |
| 6   | runtime_q6  | instantiateStreaming          | ✅        | `01-wat/20-streaming/`         | -               |
| 7   | runtime_q7  | Partage mémoire JS/WASM       | ✅        | `01-wat/05-memory/wrapper.mjs` | -               |
| 8   | runtime_q8  | Wasm3 (IoT)                   | ✅        | `docs/09-wasm-runtimes.md`     | -               |
| 9   | runtime_q9  | WASI filesystem               | ✅        | `03-wasi/01-hello/`            | -               |
| 10  | runtime_q10 | Gestion erreurs               | ✅        | `01-wat/21-error-handling/`    | -               |
| 11  | runtime_q11 | memory.buffer                 | ✅        | `01-wat/05-memory/wrapper.mjs` | -               |
| 12  | runtime_q12 | memory.grow()                 | ✅        | `01-wat/22-memory-grow/`       | -               |
| 13  | runtime_q13 | importObject                  | ✅        | `01-wat/02-import/wrapper.mjs` | -               |
| 14  | runtime_q14 | Passer string à WASM          | ✅        | `01-wat/23-strings/`           | -               |
| 15  | runtime_q15 | WebAssembly.validate()        | ✅        | `01-wat/24-validate/`          | -               |
| 16  | runtime_q16 | WebAssembly.Table()           | ✅        | `01-wat/11-table/wrapper.mjs`  | -               |
| 17  | runtime_q17 | instantiateStreaming avantage | ✅        | `01-wat/20-streaming/`         | -               |
| 18  | runtime_q18 | BigInt pour i64               | ✅        | `01-wat/25-bigint/`            | -               |
| 19  | runtime_q19 | Wasmer                        | ✅        | `docs/09-wasm-runtimes.md`     | -               |
| 20  | runtime_q20 | Vérifier support WASM         | ✅        | `01-wat/26-feature-detect/`    | -               |

**Résumé Chapitre 3:** 20/20 couverts (100%)

---

## Chapitre 4 : AssemblyScript (j2-aprem-assemblyscript)

| #   | ID     | Question QCM                | Couvert ? | Exemple existant                    | Exemple à créer |
| --- | ------ | --------------------------- | --------- | ----------------------------------- | --------------- |
| 1   | as_q1  | Qu'est-ce qu'AssemblyScript | ✅        | `04-assemblyscript/01-hello/`       | -               |
| 2   | as_q2  | npx asinit                  | ✅        | `04-assemblyscript/*/package.json`  | -               |
| 3   | as_q3  | Garbage collector           | ✅        | `04-assemblyscript/04-gc/`          | -               |
| 4   | as_q4  | asconfig.json               | ✅        | `04-assemblyscript/*/asconfig.json` | -               |
| 5   | as_q5  | Export function             | ✅        | `04-assemblyscript/03-exports/`     | -               |
| 6   | as_q6  | Types i32/u32/i64/f64       | ✅        | `04-assemblyscript/01-hello/`       | -               |
| 7   | as_q7  | Intégration front-end       | ✅        | `04-assemblyscript/*/index.html`    | -               |
| 8   | as_q8  | Déclaration classe          | ✅        | `04-assemblyscript/02-class/`       | -               |
| 9   | as_q9  | Source maps debug           | ✅        | `docs/10-assemblyscript-debug.md`   | -               |
| 10  | as_q10 | Option --optimize           | ✅        | `04-assemblyscript/05-optimize/`    | -               |
| 11  | as_q11 | \_\_newString() loader      | ✅        | `04-assemblyscript/06-strings/`     | -               |
| 12  | as_q12 | Debug vs Release            | ✅        | `04-assemblyscript/*/build/`        | -               |
| 13  | as_q13 | \_\_getString() loader      | ✅        | `04-assemblyscript/06-strings/`     | -               |
| 14  | as_q14 | Tableau typé Int32Array     | ✅        | `04-assemblyscript/07-arrays/`      | -               |
| 15  | as_q15 | \_\_release()               | ✅        | `04-assemblyscript/04-gc/`          | -               |
| 16  | as_q16 | @external import            | ✅        | `04-assemblyscript/08-imports/`     | -               |
| 17  | as_q17 | StaticArray vs Array        | ✅        | `04-assemblyscript/07-arrays/`      | -               |
| 18  | as_q18 | Support SIMD v128           | ✅        | `04-assemblyscript/09-simd/`        | -               |
| 19  | as_q19 | assert() et abort()         | ✅        | `04-assemblyscript/10-errors/`      | -               |
| 20  | as_q20 | Analyse taille module       | ✅        | `docs/11-wasm-analysis-tools.md`    | -               |

**Résumé Chapitre 4:** 20/20 couverts (100%)

---

## Chapitre 5 : Emscripten (j3-matin-emscripten)

| #   | ID     | Question QCM                | Couvert ? | Exemple existant                      | Exemple à créer                 |
| --- | ------ | --------------------------- | --------- | ------------------------------------- | ------------------------------- |
| 1   | em_q1  | Rôle Emscripten             | ✅        | `02-emscripten/01-hello/`             | -                               |
| 2   | em_q2  | Commande emcc               | ✅        | `02-emscripten/*/Makefile`            | -                               |
| 3   | em_q3  | Langages C/C++              | ✅        | `02-emscripten/01-hello/hello.c`      | -                               |
| 4   | em_q4  | Installation Emscripten     | ✅        | `docs/12-emscripten-install.md`       | -                               |
| 5   | em_q5  | Module.ccall()              | ✅        | `02-emscripten/02-library/wrapper.js` | -                               |
| 6   | em_q6  | ccall vs cwrap              | ✅        | `02-emscripten/02-library/wrapper.js` | -                               |
| 7   | em_q7  | Glue code JS                | ✅        | `02-emscripten/01-hello/hello.js`     | -                               |
| 8   | em_q8  | EMSCRIPTEN_KEEPALIVE        | ✅        | `02-emscripten/02-library/add.c`      | -                               |
| 9   | em_q9  | asm.js historique           | ✅        | `docs/05-asmjs-history.md`            | -                               |
| 10  | em_q10 | Flags -O1/-O2/-O3           | ✅        | `02-emscripten/08-optimize/`          | -                               |
| 11  | em_q11 | Chaînes UTF8ToString        | ✅        | `02-emscripten/04-strings/`           | -                               |
| 12  | em_q12 | -sEXPORT_ES6                | ✅        | `02-emscripten/03-es6/`               | -                               |
| 13  | em_q13 | HEAP8/HEAP32/HEAPF64        | ✅        | `02-emscripten/09-heap/`              | -                               |
| 14  | em_q14 | -sALLOW_MEMORY_GROWTH       | ✅        | `02-emscripten/10-memory-growth/`     | -                               |
| 15  | em_q15 | Debug -gsource-map          | ✅        | `02-emscripten/11-debug/`             | -                               |
| 16  | em_q16 | EXPORTED_RUNTIME_METHODS    | ✅        | `02-emscripten/02-library/Makefile`   | -                               |
| 17  | em_q17 | printf → console.log        | ✅        | `02-emscripten/01-hello/`             | -                               |
| 18  | em_q18 | Lier plusieurs fichiers C   | ✅        | `02-emscripten/12-multifile/`         | -                               |
| 19  | em_q19 | Ports bibliothèques tierces | ✅        | `02-emscripten/13-ports/`             | -                               |
| 20  | em_q20 | -o .js vs -o .html          | ❌        | -                                     | `02-emscripten/14-html-output/` |

**Résumé Chapitre 5:** 19/20 couverts (95%)

---

## Chapitre 6 : Portage de librairie (j3-aprem-portage)

| #   | ID       | Question QCM                   | Couvert ? | Exemple existant                    | Exemple à créer                       |
| --- | -------- | ------------------------------ | --------- | ----------------------------------- | ------------------------------------- |
| 1   | port_q1  | emconfigure                    | ❌        | -                                   | `02-emscripten/15-autoconf/`          |
| 2   | port_q2  | emmake make                    | ❌        | -                                   | `02-emscripten/16-makefile/`          |
| 3   | port_q3  | -sMODULARIZE                   | ⚠️        | `02-emscripten/03-es6/Makefile`     | `02-emscripten/17-modularize/`        |
| 4   | port_q4  | EXPORTED_FUNCTIONS             | ✅        | `02-emscripten/02-library/Makefile` | -                                     |
| 5   | port_q5  | MEMFS filesystem virtuel       | ✅        | `02-emscripten/07-filesystem/`      | -                                     |
| 6   | port_q6  | --preload-file                 | ✅        | `02-emscripten/07-filesystem/`      | -                                     |
| 7   | port_q7  | Variable EMSDK                 | ✅        | `docs/12-emscripten-install.md`     | -                                     |
| 8   | port_q8  | Autoconf/Automake              | ❌        | -                                   | `02-emscripten/15-autoconf/`          |
| 9   | port_q9  | EXPORTED_RUNTIME_METHODS       | ⚠️        | `02-emscripten/02-library/Makefile` | -                                     |
| 10  | port_q10 | emcmake cmake                  | ❌        | -                                   | `02-emscripten/18-cmake/`             |
| 11  | port_q11 | --embed-file vs --preload-file | ⚠️        | `02-emscripten/07-filesystem/`      | -                                     |
| 12  | port_q12 | IDBFS persistance              | ❌        | -                                   | `02-emscripten/19-idbfs/`             |
| 13  | port_q13 | -sINITIAL_MEMORY               | ❌        | -                                   | `02-emscripten/20-memory-config/`     |
| 14  | port_q14 | Symboles non définis           | ❌        | -                                   | `02-emscripten/21-undefined-symbols/` |
| 15  | port_q15 | -sWASM_BIGINT                  | ❌        | -                                   | `02-emscripten/22-bigint/`            |
| 16  | port_q16 | Debug librairie portée         | ✅        | `02-emscripten/11-debug/`           | -                                     |
| 17  | port_q17 | -sSINGLE_FILE=1                | ❌        | -                                   | `02-emscripten/23-single-file/`       |
| 18  | port_q18 | Module.arguments               | ✅        | `02-emscripten/05-main/`            | -                                     |
| 19  | port_q19 | -sINVOKE_RUN=0                 | ❌        | -                                   | `02-emscripten/24-no-main/`           |
| 20  | port_q20 | Intégration React/Vue          | ❌        | -                                   | `02-emscripten/25-spa-integration/`   |

**Résumé Chapitre 6:** 7/20 couverts (35%)

---

## Résumé Global

| Chapitre             | Couverts | Total   | Pourcentage |
| -------------------- | -------- | ------- | ----------- |
| 1. Introduction WASM | 20       | 20      | 100%        |
| 2. Langage WAT       | 20       | 20      | 100%        |
| 3. Runtimes & API JS | 20       | 20      | 100%        |
| 4. AssemblyScript    | 20       | 20      | 100%        |
| 5. Emscripten        | 19       | 20      | 95%         |
| 6. Portage librairie | 7        | 20      | 35%         |
| **TOTAL**            | **106**  | **120** | **88%**     |

---

## Exemples prioritaires à créer

### Haute priorité (concepts fondamentaux)

1. ~~**`01-wat/23-strings/`** - Passage de chaînes de caractères entre JS et
   WASM~~ ✅
2. ~~**`01-wat/22-memory-grow/`** - Croissance dynamique de la mémoire~~ ✅
3. ~~**`01-wat/20-streaming/`** - Utilisation de `instantiateStreaming`~~ ✅
4. ~~**`01-wat/21-error-handling/`** - Gestion des erreurs
   CompileError/LinkError/RuntimeError~~ ✅
5. ~~**`01-wat/25-bigint/`** - Utilisation des BigInt pour i64~~ ✅

### Moyenne priorité (AssemblyScript)

6. ~~**`04-assemblyscript/06-strings/`** - **newString/**getString avec le
   loader~~ ✅
7. ~~**`04-assemblyscript/08-imports/`** - @external pour importer des fonctions
   JS~~ ✅
8. ~~**`04-assemblyscript/07-arrays/`** - StaticArray et Int32Array~~ ✅
9. **`04-assemblyscript/04-gc/`** - Garbage collector et \_\_release

### Moyenne priorité (Emscripten avancé)

10. **`02-emscripten/17-modularize/`** - -sMODULARIZE avec factory Promise
11. **`02-emscripten/18-cmake/`** - emcmake pour projets CMake
12. **`02-emscripten/08-optimize/`** - Comparaison -O0 à -O3
13. **`02-emscripten/09-heap/`** - Accès HEAP8/HEAP32/HEAPF64

### Basse priorité (cas avancés)

14. **`02-emscripten/15-autoconf/`** - emconfigure pour projets Autoconf
15. **`02-emscripten/19-idbfs/`** - Persistance avec IndexedDB
16. **`02-emscripten/25-spa-integration/`** - Intégration React/Vue
17. ~~**`04-assemblyscript/09-simd/`** - Opérations SIMD v128~~ ✅
