/**
 * ports.c - Démonstration du port zlib
 * Question QCM: em_q19 - Bibliothèques tierces avec Emscripten
 * 
 * Utilise zlib pour compresser et décompresser des données
 */

#include <stdio.h>
#include <string.h>
#include <emscripten.h>
#include <zlib.h>

#define MAX_BUFFER 1024

// Buffer statique pour stocker les données compressées
static unsigned char compressed_buffer[MAX_BUFFER];
static unsigned char decompressed_buffer[MAX_BUFFER];
static uLong compressed_size = 0;

/**
 * Retourne la version de zlib
 */
EMSCRIPTEN_KEEPALIVE
const char* get_zlib_version(void) {
    return zlibVersion();
}

/**
 * Compresse une chaîne et retourne la taille compressée
 */
EMSCRIPTEN_KEEPALIVE
int compress_data(const char* input) {
    uLong source_len = strlen(input) + 1;
    compressed_size = MAX_BUFFER;
    
    int result = compress(compressed_buffer, &compressed_size,
                         (const unsigned char*)input, source_len);
    
    if (result == Z_OK) {
        printf("Compression: %lu → %lu octets (ratio: %.1f%%)\n",
               source_len, compressed_size,
               (float)compressed_size / source_len * 100);
        return (int)compressed_size;
    }
    
    printf("Erreur de compression: %d\n", result);
    return -1;
}

/**
 * Décompresse les données précédemment compressées
 */
EMSCRIPTEN_KEEPALIVE
const char* decompress_data(void) {
    if (compressed_size == 0) {
        return "Aucune donnée compressée";
    }
    
    uLong dest_len = MAX_BUFFER;
    int result = uncompress(decompressed_buffer, &dest_len,
                           compressed_buffer, compressed_size);
    
    if (result == Z_OK) {
        printf("Décompression: %lu → %lu octets\n", compressed_size, dest_len);
        return (const char*)decompressed_buffer;
    }
    
    printf("Erreur de décompression: %d\n", result);
    return "Erreur";
}

/**
 * Calcule le CRC32 d'une chaîne (autre fonctionnalité de zlib)
 */
EMSCRIPTEN_KEEPALIVE
unsigned int calculate_crc32(const char* input) {
    uLong crc = crc32(0L, Z_NULL, 0);
    crc = crc32(crc, (const unsigned char*)input, strlen(input));
    return (unsigned int)crc;
}
