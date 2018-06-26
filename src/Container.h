#pragma once
#include <deque>
#include "AbstractFigure.h"
#include "iostream"
class Container {
public:
    Container ();
    AbstractFigure* getbyId (int a); // if id doesnt exist => return NULL
    bool bring_to_back(int a);
    bool bring_to_front(int a);
    bool push (AbstractFigure *Fig);
    AbstractFigure* getNext ();
    ~Container();
private:
    int getbyPointer (AbstractFigure* p);
    std::deque<AbstractFigure*> Figures;
    int current_figure;
};
