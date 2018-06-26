#include "Scene.h"
#include <iostream>

static void array_to_file (std::ostream &str, std::vector<std::vector<int>> &arr) {
    for (int row = (arr[0].size()-1); row >=0; --row) {
        for (int col = 0; col<arr.size(); ++col){
            switch (arr[col][row]) {
                case (0):
                {
                    str << ' ';
                    break;
                }
                case (1):
                {
                    str << '.';
                    break;
                }
                case (2):
                {
                    str << 'o';
                    break;
                }
                case (3):
                {
                    str << '*';
                    break;
                }
            }
        }
        str << std::endl;
    }
}

Scene :: Scene (double x, double y, double s_x, double s_y, int width, int height) :
x(x), y(y), s_x(s_x), s_y(s_y), width(width), height(height)   { }
void Scene :: draw (std::ostream &file, Container& Cont) {
    std::vector<std::vector<int>> array;
    array.resize(width);
    for (int i = 0; i < array.size(); ++i) {
        array[i].resize(height);
    }
    
    for (int i = 0; i < width; ++i) {
        for (int j = 0; j<height; ++j){
            array[i][j] = 1;
        }
    }
    AbstractFigure* Figure = Cont.getNext();
    while (Figure!=nullptr) {
        Figure->Draw(array, x, y, s_x, s_y);
        Figure = Cont.getNext();
    }
    array_to_file (file,array);
};
