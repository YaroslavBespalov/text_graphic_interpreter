#pragma once
#include <fstream>
#include "Container.h"

static void array_to_file (std::ofstream &str, std::vector<std::vector<int>> &arr);

class Scene {
private:
    double x, y, s_x, s_y;
    int width, height;
public:
    Scene (double x, double y, double s_x, double s_y, int width, int height);
    void draw (std::ostream &file, Container& Cont);
};
