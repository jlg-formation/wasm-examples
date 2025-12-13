/**
 * app.c - Programme simple pour démontrer les sorties HTML vs JS
 * Question QCM: em_q20
 */

#include <stdio.h>
#include <emscripten.h>

// Fonction exportée
EMSCRIPTEN_KEEPALIVE
int multiply(int a, int b) {
    printf("Calcul: %d x %d = %d\n", a, b, a * b);
    return a * b;
}

// Point d'entrée (utilisé par la sortie HTML)
int main() {
    printf("=== Démonstration sortie HTML vs JS ===\n");
    printf("Module chargé avec succès!\n");
    printf("Appelez multiply(a, b) pour tester.\n");
    return 0;
}
