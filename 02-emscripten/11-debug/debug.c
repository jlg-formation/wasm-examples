/**
 * Emscripten - Démonstration du debug avec source maps
 * Questions QCM: em_q15, port_q16
 */

#include <emscripten.h>
#include <stdio.h>

// Fonction simple pour démontrer le debug
EMSCRIPTEN_KEEPALIVE
int calculate(int a, int b, int operation) {
    int result = 0;
    
    // Point d'arrêt possible ici
    printf("calculate(%d, %d, op=%d)\n", a, b, operation);
    
    switch (operation) {
        case 0:  // Addition
            result = a + b;
            break;
        case 1:  // Soustraction
            result = a - b;
            break;
        case 2:  // Multiplication
            result = a * b;
            break;
        case 3:  // Division
            if (b == 0) {
                printf("Erreur: division par zéro!\n");
                return -1;
            }
            result = a / b;
            break;
        default:
            printf("Opération inconnue: %d\n", operation);
            return -1;
    }
    
    printf("Résultat: %d\n", result);
    return result;
}

// Fonction avec une boucle pour tester le debug pas à pas
EMSCRIPTEN_KEEPALIVE
int sumArray(int* arr, int length) {
    int sum = 0;
    
    printf("sumArray: length=%d\n", length);
    
    for (int i = 0; i < length; i++) {
        // On peut inspecter 'i' et 'sum' à chaque itération
        sum += arr[i];
        printf("  i=%d, arr[i]=%d, sum=%d\n", i, arr[i], sum);
    }
    
    return sum;
}

// Point d'entrée pour test
int main() {
    printf("Module debug chargé!\n");
    
    // Test basique
    int result = calculate(10, 5, 0);
    printf("Test: 10 + 5 = %d\n", result);
    
    return 0;
}
