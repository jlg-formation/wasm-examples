#include <cstdio>
#include <string>

#include <emscripten/bind.h>

struct Point {
    int x;
    int y;
};

int add_ints(int left, int right)
{
    return left + right;
}

double average3(double a, double b, double c)
{
    return (a + b + c) / 3.0;
}

std::string describe_pair(const std::string &left, const std::string &right)
{
    char buffer[256];
    std::snprintf(
        buffer,
        sizeof(buffer),
        "left=%s | right=%s | total=%zu",
        left.c_str(),
        right.c_str(),
        left.size() + right.size()
    );
    return std::string(buffer);
}

Point translate_point(Point point, int dx, int dy)
{
    return Point {
        point.x + dx,
        point.y + dy,
    };
}

EMSCRIPTEN_BINDINGS(example_module)
{
    emscripten::value_object<Point>("Point")
        .field("x", &Point::x)
        .field("y", &Point::y);

    emscripten::function("addInts", &add_ints);
    emscripten::function("average3", &average3);
    emscripten::function("describePair", &describe_pair);
    emscripten::function("translatePoint", &translate_point);
}