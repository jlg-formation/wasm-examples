// AssemblyScript - Gestion des erreurs avec assert() et abort()
// Question QCM: as_q19

// ============================================
// assert(condition, message?)
// ============================================
// Vérifie une condition. Si fausse, appelle abort().
// Similaire aux assertions dans d'autres langages.

export function divide(a: i32, b: i32): i32 {
  // Assert vérifie que le diviseur n'est pas zéro
  assert(b != 0, "Division par zéro interdite");
  return a / b;
}

export function getArrayElement(arr: StaticArray<i32>, index: i32): i32 {
  // Assert vérifie que l'index est valide
  assert(index >= 0, "Index négatif");
  assert(index < arr.length, "Index hors limites");
  return unchecked(arr[index]);
}

// ============================================
// abort(message?, fileName?, line?, column?)
// ============================================
// Termine immédiatement l'exécution avec une erreur fatale.
// Utilisé pour les cas d'erreur irrécupérables.

export function validateAge(age: i32): void {
  if (age < 0) {
    // abort() déclenche un trap WASM
    abort("L'âge ne peut pas être négatif");
  }
  if (age > 150) {
    abort("Âge invalide: dépasse 150 ans");
  }
}

// ============================================
// Exemple pratique : Validation de données
// ============================================

export function processData(value: i32): i32 {
  // Vérification préliminaire avec assert
  assert(value >= 0, "Valeur doit être positive");

  // Traitement conditionnel avec abort pour cas critique
  if (value > 1000000) {
    abort("Valeur trop grande pour le traitement");
  }

  return value * 2;
}

// ============================================
// Fonction de test qui réussit toujours
// ============================================

export function safeOperation(a: i32, b: i32): i32 {
  // Cette fonction n'a pas de cas d'erreur
  return a + b;
}

// ============================================
// Note: try/catch n'est PAS supporté
// ============================================
// Le code suivant ne compile PAS en AssemblyScript :
//
// try {
//   riskyOperation();
// } catch (e) {
//   handleError(e);
// }
//
// La gestion des exceptions WASM est une proposition future.
