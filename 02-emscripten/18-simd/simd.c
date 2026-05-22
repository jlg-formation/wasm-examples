/**
 * Emscripten - SIMD automatique sur une addition de vecteurs
 */

#include <emscripten.h>

#define VECTOR_LENGTH 4096

static float input_a[VECTOR_LENGTH] __attribute__((aligned(16)));
static float input_b[VECTOR_LENGTH] __attribute__((aligned(16)));
static float output[VECTOR_LENGTH] __attribute__((aligned(16)));

EMSCRIPTEN_KEEPALIVE
int vector_length(void) {
    return VECTOR_LENGTH;
}

EMSCRIPTEN_KEEPALIVE
void init_vectors(void) {
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        input_a[i] = (float)((i % 251) - 125) * 0.25f;
        input_b[i] = (float)(((i * 7) % 241) - 120) * 0.5f;
        output[i] = 0.0f;
    }
}

EMSCRIPTEN_KEEPALIVE
void reset_output(void) {
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        output[i] = 0.0f;
    }
}

EMSCRIPTEN_KEEPALIVE
void run_kernel(int repetitions) {
    float *restrict a = input_a;
    float *restrict b = input_b;
    float *restrict out = output;

    for (int round = 0; round < repetitions; round++) {
        for (int i = 0; i < VECTOR_LENGTH; i++) {
            out[i] += a[i] + b[i];
        }
    }
}

EMSCRIPTEN_KEEPALIVE
double checksum(void) {
    double total = 0.0;

    for (int i = 0; i < VECTOR_LENGTH; i++) {
        total += (double)output[i];
    }

    return total;
}