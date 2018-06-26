#pragma once
#include <utility>
#include <vector>

class AbstractFigure {
protected:
    int id;
    virtual void apply_scale (void) = 0;
    virtual bool test_point (std::pair<double,double> pos) const = 0;
public:
    int color;
    double scale;
    AbstractFigure (int id, int color, double x, double y);
    virtual ~AbstractFigure();
    std::pair<double,double> position;
    int getId ();
    void setPosition (double x, double y);
    virtual void Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height) = 0; 
};
