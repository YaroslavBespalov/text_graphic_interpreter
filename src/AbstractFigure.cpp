#include "AbstractFigure.h"


AbstractFigure:: AbstractFigure (int id, int color, double x, double y) : id(id), position(x,y),
scale(1.0), color(color) {}
AbstractFigure::~AbstractFigure() {}

int AbstractFigure:: getId () {
    return id;
}
void AbstractFigure:: setPosition (double x, double y) {
    this->position = std::make_pair(x + position.first,y + position.second);
}
