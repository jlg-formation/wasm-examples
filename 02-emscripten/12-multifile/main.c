/**
 * main.c - Point d'entrée combinant les modules
 * Question QCM: em_q18 - Lier plusieurs fichiers C
 */

#include <emscripten.h>
#include "math_ops.h"
#include "utils.h"

// Exporte les fonctions mathématiques
EMSCRIPTEN_KEEPALIVE
int calc_add(int a, int b) {
    return add(a, b);
}

EMSCRIPTEN_KEEPALIVE
int calc_power(int base, int exp) {
    // Utilise clamp de utils.h pour limiter l'exposant
    exp = clamp(exp, 0, 10);
    return power(base, exp);
}

EMSCRIPTEN_KEEPALIVE
int calc_factorial(int n) {
    // Utilise clamp pour éviter des calculs trop grands
    n = clamp(n, 0, 12);
    return factorial(n);
}

// Exporte les fonctions utilitaires
EMSCRIPTEN_KEEPALIVE
int convert_temp(int value, int to_fahrenheit) {
    if (to_fahrenheit) {
        return celsius_to_fahrenheit(value);
    } else {
        return fahrenheit_to_celsius(value);
    }
}

EMSCRIPTEN_KEEPALIVE
int get_abs(int x) {
    return abs_value(x);
}
