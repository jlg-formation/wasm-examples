/**
 * Wrapper pour démontrer emmake
 * Question QCM: port_q2 - emmake make
 */

import { createRequire } from "module";

const require = createRequire(import.meta.url);
const Module = require("./dist/calculator.js");

await /** @type {Promise<void>} */ (
  new Promise((resolve) => {
    Module.onRuntimeInitialized = () => resolve(undefined);
  })
);

console.log("=== Démonstration emmake ===\n");

// Wrappers
const add = Module.cwrap("add", "number", ["number", "number"]);
const sub = Module.cwrap("sub", "number", ["number", "number"]);
const mul = Module.cwrap("mul", "number", ["number", "number"]);
const div = Module.cwrap("div_int", "number", ["number", "number"]);

console.log("1. Fonctions de la bibliothèque");
console.log("-".repeat(40));
console.log(`   add(10, 3) = ${add(10, 3)}`);
console.log(`   sub(10, 3) = ${sub(10, 3)}`);
console.log(`   mul(10, 3) = ${mul(10, 3)}`);
console.log(`   div(10, 3) = ${div(10, 3)}`);

console.log("\n2. Workflow emmake");
console.log("-".repeat(40));
console.log("   # Pour un projet avec Makefile:");
console.log("   cd project/");
console.log("   emmake make          # Compile avec emcc");
console.log("   emmake make install  # Installe (optionnel)");

console.log("\n3. Ce que fait emmake");
console.log("-".repeat(40));
console.log("   emmake définit automatiquement:");
console.log("   • CC=emcc      (compilateur C)");
console.log("   • CXX=em++     (compilateur C++)");
console.log("   • AR=emar      (archiveur)");
console.log("   • RANLIB=emranlib");
console.log("   • LD=emcc      (éditeur de liens)");

console.log("\n4. Différence emmake vs emconfigure");
console.log("-".repeat(40));
console.log("   emconfigure ./configure  → Projet Autoconf");
console.log("   emmake make              → Projet Makefile");
console.log("   emcmake cmake ..         → Projet CMake");
