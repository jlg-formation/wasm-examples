#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "interop.h"

int add_ints(int left, int right)
{
    return left + right;
}

double average3(double a, double b, double c)
{
    return (a + b + c) / 3.0;
}

char *describe_pair(const char *left, const char *right)
{
    const char *safe_left = left == NULL ? "" : left;
    const char *safe_right = right == NULL ? "" : right;
    int size = snprintf(
        NULL,
        0,
        "left=%s | right=%s | total=%zu",
        safe_left,
        safe_right,
        strlen(safe_left) + strlen(safe_right)
    );
    char *result = malloc((size_t) size + 1U);

    if (result == NULL) {
        return NULL;
    }

    snprintf(
        result,
        (size_t) size + 1U,
        "left=%s | right=%s | total=%zu",
        safe_left,
        safe_right,
        strlen(safe_left) + strlen(safe_right)
    );

    return result;
}

Point translate_point(Point point, int dx, int dy)
{
    Point updated = {
        .x = point.x + dx,
        .y = point.y + dy,
    };

    return updated;
}

void translate_point_ptr(const Point *input, int dx, int dy, Point *output)
{
    if (input == NULL || output == NULL) {
        return;
    }

    *output = translate_point(*input, dx, dy);
}