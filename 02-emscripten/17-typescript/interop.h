#ifndef INTEROP_H
#define INTEROP_H

typedef struct Point {
    int x;
    int y;
} Point;

int add_ints(int left, int right);
double average3(double a, double b, double c);
char *describe_pair(const char *left, const char *right);
Point translate_point(Point point, int dx, int dy);
void translate_point_ptr(const Point *input, int dx, int dy, Point *output);

#endif