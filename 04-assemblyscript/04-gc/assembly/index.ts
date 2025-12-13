/** Utiliser ce fichier pour __collect().
 *  La doc n'a pas prevu que l'utilisateur ait envie de l'utiliser
 * explicitement alors il n'est pas typé.
 */

/// <reference path="../node_modules/assemblyscript/std/assembly/rt/index.d.ts" />

/**
 * 04-gc - Démonstration du Garbage Collector AssemblyScript
 *
 * Questions QCM: as_q3 (GC), as_q15 (__release / gestion mémoire)
 */

// Classe simple pour démontrer l'allocation
// Note: Les classes ne sont pas exportables directement en WASM,
// on exporte des fonctions factory à la place
class Counter {
  count: i32;

  constructor(initial: i32 = 0) {
    this.count = initial;
  }

  increment(): i32 {
    this.count += 1;
    return this.count;
  }

  getValue(): i32 {
    return this.count;
  }
}

// Fonction qui crée des objets (ils seront collectés automatiquement)
export function createAndUseCounter(initial: i32): i32 {
  const counter = new Counter(initial);
  counter.increment();
  counter.increment();
  counter.increment();
  return counter.getValue();
  // Le counter sera collecté après cette fonction
}

// Variable globale pour stocker un counter persistant
let pinnedCounter: Counter | null = null;

// Crée un counter persistant (stocké en global)
export function createPinnedCounter(initial: i32): void {
  pinnedCounter = new Counter(initial);
}

// Récupère la valeur du counter persistant
export function getPinnedCounterValue(): i32 {
  if (pinnedCounter === null) return -1;
  return pinnedCounter!.getValue();
}

// Incrémente le counter persistant
export function incrementPinnedCounter(): i32 {
  if (pinnedCounter === null) return -1;
  return pinnedCounter!.increment();
}

// Fonction pour forcer un cycle de garbage collection
export function forceGC(): void {
  // __collect() force un cycle de GC
  __collect();
}

// Allocation d'un tableau (utilise le GC)
export function createArray(size: i32): Int32Array {
  const arr = new Int32Array(size);
  for (let i = 0; i < size; i++) {
    arr[i] = i * 2;
  }
  return arr;
}

// Somme d'un tableau
export function sumArray(arr: Int32Array): i32 {
  let sum: i32 = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}
