#include <stdio.h>

extern char **environ;

int print_env()
{
    char **s = environ;
    for (; *s; s++)
    {
        printf("%s\n", *s);
    }
    return 0;
}