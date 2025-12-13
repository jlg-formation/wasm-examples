/**
 * main.c - Programme utilisant la bibliothèque
 */

#include <stdio.h>
#include <emscripten.h>
#include "mylib.h"

EMSCRIPTEN_KEEPALIVE
int add(int a, int b) {
    return mylib_add(a, b);
}

EMSCRIPTEN_KEEPALIVE
int multiply(int a, int b) {
    return mylib_multiply(a, b);
}

EMSCRIPTEN_KEEPALIVE
const char* version(void) {
    return mylib_version();
}

int main() {
    printf("mylib version: %s\n", mylib_version());
    return 0;
}
