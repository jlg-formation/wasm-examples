/**
 * Emscripten - Croissance mémoire dynamique
 * Question QCM: em_q14 - -sALLOW_MEMORY_GROWTH
 */

#include <emscripten.h>
#include <stdlib.h>
#include <string.h>

// Retourne la taille actuelle du heap en octets
EMSCRIPTEN_KEEPALIVE
size_t getHeapSize() {
    return (size_t) sbrk(0);
}

// Alloue un bloc de mémoire et retourne la taille utilisée
EMSCRIPTEN_KEEPALIVE
int allocateBlock(int sizeKB) {
    size_t size = sizeKB * 1024;
    void* ptr = malloc(size);
    
    if (ptr == NULL) {
        return -1;  // Échec de l'allocation
    }
    
    // Écrire dans la mémoire pour forcer l'allocation réelle
    memset(ptr, 0, size);
    
    // Note: On ne libère pas pour démontrer la croissance
    return (int) size;
}

// Alloue plusieurs blocs pour forcer la croissance
EMSCRIPTEN_KEEPALIVE
int forceGrowth(int blockCount, int blockSizeKB) {
    int totalAllocated = 0;
    
    for (int i = 0; i < blockCount; i++) {
        int result = allocateBlock(blockSizeKB);
        if (result < 0) {
            return totalAllocated;  // Arrêt si échec
        }
        totalAllocated += result;
    }
    
    return totalAllocated;
}

// Retourne le nombre de pages mémoire (1 page = 64 KB)
EMSCRIPTEN_KEEPALIVE
int getMemoryPages() {
    return __builtin_wasm_memory_size(0);
}
