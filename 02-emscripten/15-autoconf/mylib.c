/**
 * mylib.c - Bibliothèque simple simulant un projet Autoconf
 * Questions QCM: port_q1, port_q8
 */

#include "mylib.h"

int mylib_add(int a, int b) {
    return a + b;
}

int mylib_multiply(int a, int b) {
    return a * b;
}

const char* mylib_version(void) {
    return MYLIB_VERSION;
}
