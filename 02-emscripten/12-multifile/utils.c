/**
 * utils.c - Implémentation des fonctions utilitaires
 */

#include "utils.h"

int clamp(int value, int min, int max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
}

int abs_value(int x) {
    return x < 0 ? -x : x;
}

int celsius_to_fahrenheit(int celsius) {
    return (celsius * 9 / 5) + 32;
}

int fahrenheit_to_celsius(int fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
}
