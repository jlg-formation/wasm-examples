#include <stdio.h>

void load_file(char *buffer, int max, char *filename)
{
    printf("loading file %s:...\n", filename);

    FILE *fptr;
    fptr = fopen(filename, "r");
    int i = 0;

    buffer[max - 1] = 0;
    for (int i = 0; i < max - 1; i++)
    {
        buffer[i] = fgetc(fptr);
        if (buffer[i] == EOF)
        {
            buffer[i] = 0;
            break;
        }
    }

    fclose(fptr);
}