// AssemblyScript - Imports externes avec @external
// Démontre comment importer des fonctions JavaScript

// ============================================
// @external : Importer une fonction JavaScript
// ============================================

// Syntaxe: @external("module", "function")
// "env" est le module par défaut pour les imports WASM

// Import d'une fonction de log depuis JavaScript
// @ts-ignore: AssemblyScript decorator
@external("env", "logNumber")
declare function logNumber(value: i32): void;

// Import d'une fonction qui retourne une valeur
// @ts-ignore: AssemblyScript decorator
@external("env", "getTimestamp")
declare function getTimestamp(): f64;

// Import d'une fonction de notification
// @ts-ignore: AssemblyScript decorator
@external("env", "notify")
declare function notify(code: i32): void;

// ============================================
// Fonctions exportées utilisant les imports
// ============================================

export function countWithLog(max: i32): i32 {
  // Utilise la fonction logNumber importée depuis JS
  for (let i: i32 = 1; i <= max; i++) {
    logNumber(i);
  }
  return max;
}

export function measureTime(): f64 {
  // Utilise getTimestamp importée depuis JS
  const start = getTimestamp();
  
  // Travail simulé
  let sum: i32 = 0;
  for (let i: i32 = 0; i < 1000000; i++) {
    sum += i;
  }
  
  const end = getTimestamp();
  return end - start;
}

export function calculate(a: i32, b: i32): i32 {
  const result = a + b;
  
  // Notifie JS du résultat
  notify(result);
  
  return result;
}

// ============================================
// Exemple avec import personnalisé (math)
// ============================================

// @ts-ignore: AssemblyScript decorator
@external("math", "random")
declare function jsRandom(): f64;

export function getRandomInt(max: i32): i32 {
  // Utilise Math.random() de JavaScript
  return i32(jsRandom() * f64(max));
}
