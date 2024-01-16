#include <stdio.h>

char *repeatTwice(char *destination, size_t max, char *source)
{
    snprintf(destination, max, "%s%s", source, source);
    return destination;
}