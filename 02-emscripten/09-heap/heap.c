/**
 * Emscripten - Démonstration des accès mémoire HEAP
 * Question QCM: em_q13 - HEAP8/HEAP32/HEAPF64
 */

#include <emscripten.h>
#include <stdlib.h>

// Buffer global pour stocker des entiers
static int intBuffer[10];

// Buffer global pour stocker des flottants
static double floatBuffer[10];

// Retourne l'adresse du buffer d'entiers
EMSCRIPTEN_KEEPALIVE
int* getIntBufferPtr() {
    return intBuffer;
}

// Retourne l'adresse du buffer de flottants
EMSCRIPTEN_KEEPALIVE
double* getFloatBufferPtr() {
    return floatBuffer;
}

// Remplit le buffer d'entiers avec des valeurs
EMSCRIPTEN_KEEPALIVE
void fillIntBuffer() {
    for (int i = 0; i < 10; i++) {
        intBuffer[i] = (i + 1) * 10;  // 10, 20, 30, ...
    }
}

// Remplit le buffer de flottants avec des valeurs
EMSCRIPTEN_KEEPALIVE
void fillFloatBuffer() {
    for (int i = 0; i < 10; i++) {
        floatBuffer[i] = (i + 1) * 1.5;  // 1.5, 3.0, 4.5, ...
    }
}

// Calcule la somme du buffer d'entiers
EMSCRIPTEN_KEEPALIVE
int sumIntBuffer() {
    int sum = 0;
    for (int i = 0; i < 10; i++) {
        sum += intBuffer[i];
    }
    return sum;
}

// Calcule la somme du buffer de flottants
EMSCRIPTEN_KEEPALIVE
double sumFloatBuffer() {
    double sum = 0.0;
    for (int i = 0; i < 10; i++) {
        sum += floatBuffer[i];
    }
    return sum;
}

// Alloue de la mémoire dynamiquement
EMSCRIPTEN_KEEPALIVE
int* allocateIntArray(int size) {
    return (int*) malloc(size * sizeof(int));
}

// Libère la mémoire allouée
EMSCRIPTEN_KEEPALIVE
void freeIntArray(int* ptr) {
    free(ptr);
}
