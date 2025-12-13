// AssemblyScript - SIMD (Single Instruction, Multiple Data)
// Type v128 : vecteur 128 bits pour opérations parallèles

// ============================================
// v128 : Vecteur 128 bits
// Peut contenir : 4×i32, 4×f32, 2×i64, 2×f64
// ============================================

// Addition de 4 entiers i32 en parallèle avec SIMD
export function addVectorsSimd(
  a1: i32,
  a2: i32,
  a3: i32,
  a4: i32,
  b1: i32,
  b2: i32,
  b3: i32,
  b4: i32
): StaticArray<i32> {
  // Créer deux vecteurs v128 contenant 4 i32 chacun
  const vecA = i32x4(a1, a2, a3, a4);
  const vecB = i32x4(b1, b2, b3, b4);

  // Addition SIMD : 4 additions en une seule instruction
  const result = i32x4.add(vecA, vecB);

  // Extraire les résultats
  const output = new StaticArray<i32>(4);
  output[0] = i32x4.extract_lane(result, 0);
  output[1] = i32x4.extract_lane(result, 1);
  output[2] = i32x4.extract_lane(result, 2);
  output[3] = i32x4.extract_lane(result, 3);

  return output;
}

// ============================================
// Multiplication f32x4 (4 floats en parallèle)
// ============================================

export function multiplyFloatsSimd(
  a1: f32,
  a2: f32,
  a3: f32,
  a4: f32,
  b1: f32,
  b2: f32,
  b3: f32,
  b4: f32
): StaticArray<f32> {
  const vecA = f32x4(a1, a2, a3, a4);
  const vecB = f32x4(b1, b2, b3, b4);

  // Multiplication SIMD
  const result = f32x4.mul(vecA, vecB);

  const output = new StaticArray<f32>(4);
  output[0] = f32x4.extract_lane(result, 0);
  output[1] = f32x4.extract_lane(result, 1);
  output[2] = f32x4.extract_lane(result, 2);
  output[3] = f32x4.extract_lane(result, 3);

  return output;
}

// ============================================
// Benchmark : SIMD vs Scalaire
// ============================================

// Version scalaire (1 opération à la fois)
export function sumArrayScalar(arr: StaticArray<i32>): i32 {
  let sum: i32 = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += unchecked(arr[i]);
  }
  return sum;
}

// Version SIMD (4 opérations en parallèle)
export function sumArraySimd(arr: StaticArray<i32>): i32 {
  const len = arr.length;
  let sum = i32x4.splat(0); // Vecteur [0, 0, 0, 0]

  // Traiter par blocs de 4
  let i = 0;
  for (; i + 4 <= len; i += 4) {
    const vec = i32x4(
      unchecked(arr[i]),
      unchecked(arr[i + 1]),
      unchecked(arr[i + 2]),
      unchecked(arr[i + 3])
    );
    sum = i32x4.add(sum, vec);
  }

  // Somme des 4 lanes
  let total =
    i32x4.extract_lane(sum, 0) +
    i32x4.extract_lane(sum, 1) +
    i32x4.extract_lane(sum, 2) +
    i32x4.extract_lane(sum, 3);

  // Traiter les éléments restants
  for (; i < len; i++) {
    total += unchecked(arr[i]);
  }

  return total;
}

// ============================================
// Utilitaire : créer un tableau pour le benchmark
// ============================================

export function createTestArray(size: i32): StaticArray<i32> {
  const arr = new StaticArray<i32>(size);
  for (let i = 0; i < size; i++) {
    arr[i] = i % 100;
  }
  return arr;
}
