/**
 * Wrapper pour démontrer l'utilisation de la sortie .js
 * Question QCM: em_q20 - Sortie .js vs .html
 */

import { createRequire } from "module";

const require = createRequire(import.meta.url);
const Module = require("./dist/app.js");

await /** @type {Promise<void>} */ (
  new Promise((resolve) => {
    Module.onRuntimeInitialized = () => resolve(undefined);
  })
);

console.log("=== Démonstration sortie -o .js ===\n");

console.log("1. Fichiers générés");
console.log("-".repeat(40));
console.log("   Avec -o app.js:");
console.log("     • app.js   (glue code JavaScript)");
console.log("     • app.wasm (bytecode WebAssembly)");
console.log("");
console.log("   Avec -o app.html:");
console.log("     • app.html (page de test)");
console.log("     • app.js   (glue code JavaScript)");
console.log("     • app.wasm (bytecode WebAssembly)");

console.log("\n2. Test de la fonction multiply");
console.log("-".repeat(40));
const multiply = Module.cwrap("multiply", "number", ["number", "number"]);
const result = multiply(7, 8);
console.log(`   Résultat: ${result}`);

console.log("\n3. Quand utiliser chaque sortie");
console.log("-".repeat(40));
console.log("   -o app.js:");
console.log("     ✓ Production");
console.log("     ✓ Intégration dans une SPA");
console.log("     ✓ Contrôle total sur le HTML");
console.log("");
console.log("   -o app.html:");
console.log("     ✓ Développement rapide");
console.log("     ✓ Tests de portage");
console.log("     ✓ Démos standalone");

console.log("\n💡 Pour tester la sortie HTML: make serve");
