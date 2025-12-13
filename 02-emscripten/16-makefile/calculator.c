/**
 * calculator.c - Calculatrice simple pour démontrer emmake
 * Question QCM: port_q2
 */

#include "calculator.h"

int calc_add(int a, int b) {
    return a + b;
}

int calc_sub(int a, int b) {
    return a - b;
}

int calc_mul(int a, int b) {
    return a * b;
}

int calc_div(int a, int b) {
    if (b == 0) return 0;
    return a / b;
}
