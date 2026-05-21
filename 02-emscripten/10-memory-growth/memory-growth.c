/**
 * Emscripten - Croissance mémoire dynamique
 * Question QCM: em_q14 - -sALLOW_MEMORY_GROWTH
 */

#include <emscripten.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static void* allocations[32];
static int allocationCount = 0;
static volatile unsigned char touchSink = 0;

// Retourne la taille actuelle du heap en octets
EMSCRIPTEN_KEEPALIVE
size_t getHeapSize() {
    return (size_t) sbrk(0);
}

// Alloue un bloc de mémoire et retourne la taille utilisée
EMSCRIPTEN_KEEPALIVE
int allocateBlock(int sizeKB) {
    size_t size = sizeKB * 1024;
    unsigned char* ptr = malloc(size);
    
    if (ptr == NULL || allocationCount >= 32) {
        return -1;  // Échec de l'allocation
    }

    allocations[allocationCount++] = ptr;
    
    // Toucher chaque page WASM pour rendre la croissance observable.
    for (size_t offset = 0; offset < size; offset += 64 * 1024) {
        ptr[offset] = (unsigned char) (offset / (64 * 1024));
        touchSink ^= ptr[offset];
    }

    ptr[size - 1] = (unsigned char) (size & 0xff);
    touchSink ^= ptr[size - 1];
    
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
