/**
 * main.c - Point d'entrée utilisant la calculatrice
 */

#include <stdio.h>
#include <emscripten.h>
#include "calculator.h"

EMSCRIPTEN_KEEPALIVE
int add(int a, int b) {
    return calc_add(a, b);
}

EMSCRIPTEN_KEEPALIVE
int sub(int a, int b) {
    return calc_sub(a, b);
}

EMSCRIPTEN_KEEPALIVE
int mul(int a, int b) {
    return calc_mul(a, b);
}

EMSCRIPTEN_KEEPALIVE
int div_int(int a, int b) {
    return calc_div(a, b);
}
