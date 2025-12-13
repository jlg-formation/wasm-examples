/**
 * Emscripten - Démonstration des niveaux d'optimisation
 * Question QCM: em_q10 - Flags -O0 à -O3
 * 
 * Ce fichier contient une fonction de calcul intensif
 * pour comparer les performances selon le niveau d'optimisation.
 */

#include <emscripten.h>

// Export de la fonction pour JavaScript
EMSCRIPTEN_KEEPALIVE
double compute(int iterations) {
    double result = 0.0;
    
    // Boucle de calcul intensif
    for (int i = 1; i <= iterations; i++) {
        // Opérations mathématiques variées
        result += (double)i * 0.001;
        result -= (double)(i % 7) * 0.0001;
        
        // Multiplication et division
        if (i % 2 == 0) {
            result *= 1.0001;
        } else {
            result /= 1.0001;
        }
    }
    
    return result;
}

// Fonction simple pour vérifier le fonctionnement
EMSCRIPTEN_KEEPALIVE
int add(int a, int b) {
    return a + b;
}
