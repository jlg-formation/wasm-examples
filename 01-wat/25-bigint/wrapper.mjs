/**
 * 25-bigint - BigInt pour les types i64
 *
 * Démontre:
 * - Les i64 WASM sont automatiquement convertis en BigInt en JS
 * - Utilisation du suffixe 'n' pour les littéraux BigInt
 * - Calculs avec des nombres au-delà de MAX_SAFE_INTEGER
 */

import { equal } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Charger et instancier le module
const bytes = await readFile(__dirname + "/bigint.wasm");
const { instance } = await WebAssembly.instantiate(bytes);

const { add64, mul64, getLargeNumber, factorial64 } = instance.exports;

// =====================================================
// Test 1: Addition i64 basique
// =====================================================
console.log("=== Test 1: Addition i64 ===");

// Les paramètres DOIVENT être des BigInt (suffixe 'n')
const a = 10n;
const b = 20n;
const sum = add64(a, b);

console.log(`${a} + ${b} = ${sum}`);
console.log(`Type du résultat: ${typeof sum}`);
equal(typeof sum, "bigint", "Le résultat doit être un BigInt");
equal(sum, 30n);
console.log("");

// =====================================================
// Test 2: Grands nombres (au-delà de MAX_SAFE_INTEGER)
// =====================================================
console.log("=== Test 2: Grands nombres ===");

console.log(`Number.MAX_SAFE_INTEGER = ${Number.MAX_SAFE_INTEGER}`);

const largeNum = getLargeNumber();
console.log(`Valeur retournée: ${largeNum}`);
console.log(
  `C'est au-delà de MAX_SAFE_INTEGER: ${
    largeNum > BigInt(Number.MAX_SAFE_INTEGER)
  }`
);

// Démontrer la perte de précision avec Number
const asNumber = Number(largeNum);
console.log(`Converti en Number: ${asNumber}`);
console.log(`⚠️  Perte de précision: ${asNumber} !== ${largeNum}`);
console.log("");

// =====================================================
// Test 3: Calcul factorielle avec i64
// =====================================================
console.log("=== Test 3: Factorielle i64 ===");

// Avec i32, 13! déborderait (6227020800 > 2^31-1)
// Avec i64, on peut aller beaucoup plus loin

const n = 20n;
const fact = factorial64(n);
console.log(`${n}! = ${fact}`);

// Vérifier que c'est correct
const expected = 2432902008176640000n;
equal(fact, expected);

console.log(`Type: ${typeof fact}`);
console.log("");

// =====================================================
// Test 4: Erreur si on passe un Number au lieu de BigInt
// =====================================================
console.log("=== Test 4: Type checking ===");
console.log("Les fonctions i64 requièrent des BigInt:");
console.log("  add64(10, 20)   → TypeError");
console.log("  add64(10n, 20n) → OK");

try {
  // @ts-ignore - intentional error
  add64(10, 20);
  console.log("❌ Aurait dû échouer");
} catch (error) {
  console.log(`✅ Erreur attrapée: ${error.message}`);
}

console.log("\n✅ Tous les tests passés!");
