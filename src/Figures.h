#pragma once
#include <cmath>
#include "AbstractFigure.h"

class Circle : public AbstractFigure {
    public :
    Circle (int id, int color, double x, double y, double r);
    virtual void Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height);
    private :
    double R;
    std::pair<double,double>real_position;
    double real_R;
    virtual void apply_scale (void);
    virtual bool test_point (std::pair<double,double> pos) const;
};

class Square : public AbstractFigure {
    public :
    Square (int id, int color, double x, double y, double size);
    virtual void Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height);
    protected :
    std::pair<double,double>real_position;
    double width;
    double real_width;
    virtual void apply_scale (void);
    virtual bool test_point (std::pair<double,double> pos) const;
};

class Rectangle : public Square {
    public :
    Rectangle (int id, int color, double x, double y, double w, double h);
    virtual void Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height);
    private :
    std::pair<double,double>real_position;
    double height;
    double real_height;
    virtual void apply_scale (void);
    virtual bool test_point (std::pair<double,double> pos) const;
};

class Triangle : public AbstractFigure {
    public :
    Triangle (int id, int color, double x, double y, double a, double b);
    virtual void Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height);
    private :
    double size_1;
    double size_2;
    std::pair<double,double>real_position;
    double real_size_1;
    double real_size_2;
    virtual void apply_scale (void);
    virtual bool test_point (std::pair<double,double> pos) const;
};

