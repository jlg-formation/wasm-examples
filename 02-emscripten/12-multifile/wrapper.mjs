/**
 * Wrapper pour démontrer la compilation multi-fichiers
 * Question QCM: em_q18
 */

import { createRequire } from "module";

const require = createRequire(import.meta.url);
const Module = require("./dist/multifile.js");

await new Promise((resolve) => {
  Module.onRuntimeInitialized = resolve;
});

console.log("=== Compilation multi-fichiers Emscripten ===\n");

// Wrappers
const calcAdd = Module.cwrap("calc_add", "number", ["number", "number"]);
const calcPower = Module.cwrap("calc_power", "number", ["number", "number"]);
const calcFactorial = Module.cwrap("calc_factorial", "number", ["number"]);
const convertTemp = Module.cwrap("convert_temp", "number", [
  "number",
  "number",
]);
const getAbs = Module.cwrap("get_abs", "number", ["number"]);

// Tests des fonctions de math_ops.c
console.log("1. Fonctions de math_ops.c");
console.log("-".repeat(40));
console.log(`   add(10, 5) = ${calcAdd(10, 5)}`);
console.log(`   power(2, 8) = ${calcPower(2, 8)}`);
console.log(`   factorial(5) = ${calcFactorial(5)}`);

// Tests des fonctions de utils.c
console.log("\n2. Fonctions de utils.c");
console.log("-".repeat(40));
console.log(`   celsius_to_fahrenheit(100) = ${convertTemp(100, 1)}`);
console.log(`   fahrenheit_to_celsius(212) = ${convertTemp(212, 0)}`);
console.log(`   abs(-42) = ${getAbs(-42)}`);

// Structure du projet
console.log("\n3. Structure du projet");
console.log("-".repeat(40));
console.log("   main.c      → Fonctions exportées (EMSCRIPTEN_KEEPALIVE)");
console.log("   math_ops.c  → Module mathématique");
console.log("   utils.c     → Module utilitaire");
console.log("   *.h         → Headers pour les déclarations");

console.log("\n💡 Compilation:");
console.log("   emcc main.c math_ops.c utils.c -o app.js");
