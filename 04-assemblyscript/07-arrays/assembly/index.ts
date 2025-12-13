// AssemblyScript - Exemple de tableaux typés
// Démontre StaticArray, Array et Int32Array

// ============================================
// StaticArray<T> : Taille fixe, plus performant
// ============================================

// Taille connue à la compilation - pas d'overhead
const staticData: StaticArray<i32> = [10, 20, 30, 40, 50];

export function sumStaticArray(): i32 {
  let sum: i32 = 0;
  for (let i = 0; i < staticData.length; i++) {
    sum += unchecked(staticData[i]); // unchecked pour performance max
  }
  return sum; // Retourne 150
}

export function getStaticLength(): i32 {
  return staticData.length; // Retourne 5
}

// ============================================
// Array<T> : Taille dynamique, peut grandir
// ============================================

export function createDynamicArray(size: i32): Array<i32> {
  const arr = new Array<i32>(size);
  for (let i = 0; i < size; i++) {
    arr[i] = i * 10;
  }
  return arr;
}

export function sumDynamicArray(arr: Array<i32>): i32 {
  let sum: i32 = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

// Méthodes dynamiques : push, pop
export function demonstratePush(): i32 {
  const arr = new Array<i32>();
  arr.push(100);
  arr.push(200);
  arr.push(300);
  return arr.length; // Retourne 3
}

// ============================================
// Int32Array : Compatible TypedArray JavaScript
// ============================================

export function createInt32Array(size: i32): Int32Array {
  const arr = new Int32Array(size);
  for (let i = 0; i < size; i++) {
    arr[i] = i * 100;
  }
  return arr;
}

export function sumInt32Array(arr: Int32Array): i32 {
  let sum: i32 = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

// ============================================
// Float64Array pour calculs précis
// ============================================

export function createFloat64Array(size: i32): Float64Array {
  const arr = new Float64Array(size);
  for (let i = 0; i < size; i++) {
    arr[i] = f64(i) * 1.5;
  }
  return arr;
}

export function averageFloat64Array(arr: Float64Array): f64 {
  if (arr.length == 0) return 0.0;
  let sum: f64 = 0.0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum / f64(arr.length);
}
