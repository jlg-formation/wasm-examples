/**
 * Wrapper pour démontrer le portage Autoconf
 * Questions QCM: port_q1, port_q8
 */

import { createRequire } from "module";

const require = createRequire(import.meta.url);
const Module = require("./dist/autoconf.js");

await /** @type {Promise<void>} */ (
  new Promise((resolve) => {
    Module.onRuntimeInitialized = () => resolve(undefined);
  })
);

console.log("=== Portage Autoconf avec emconfigure ===\n");

// Wrappers
const add = Module.cwrap("add", "number", ["number", "number"]);
const multiply = Module.cwrap("multiply", "number", ["number", "number"]);
const version = Module.cwrap("version", "string", []);

console.log("1. Bibliothèque portée");
console.log("-".repeat(40));
console.log(`   Version: ${version()}`);
console.log(`   add(10, 5) = ${add(10, 5)}`);
console.log(`   multiply(7, 8) = ${multiply(7, 8)}`);

console.log("\n2. Workflow Autoconf → WebAssembly");
console.log("-".repeat(40));
console.log("   # Projet Autoconf typique:");
console.log("   emconfigure ./configure --prefix=/opt");
console.log("   emmake make");
console.log("   emmake make install");
console.log("   emcc libfoo.a -o foo.js -sEXPORTED_FUNCTIONS=...");

console.log("\n3. Outils Emscripten");
console.log("-".repeat(40));
console.log("   | Outil       | Équivalent natif |");
console.log("   |-------------|------------------|");
console.log("   | emcc        | gcc/clang        |");
console.log("   | em++        | g++/clang++      |");
console.log("   | emar        | ar               |");
console.log("   | emranlib    | ranlib           |");
console.log("   | emconfigure | ./configure      |");
console.log("   | emmake      | make             |");
console.log("   | emcmake     | cmake            |");

console.log("\n4. Variables d'environnement (emconfigure)");
console.log("-".repeat(40));
console.log("   CC=emcc CXX=em++ AR=emar RANLIB=emranlib");
