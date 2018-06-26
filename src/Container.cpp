#include "Container.h"


Container :: Container () {
    current_figure = 0;
}
AbstractFigure* Container:: getbyId (int a) {
    for (int i = 0; i < Figures.size(); ++i) {
        if (Figures[i]->getId() == a) {
            return Figures[i];
        };
    }
    std::cerr << "id: " << a << " doesn't undefined" << std::endl;
    return nullptr;
}

int Container:: getbyPointer (AbstractFigure* p) {
for (int i = 0; i < Figures.size(); ++i) {
    if (Figures[i]== p) {
        return i;
        }
    }
    return -1;
}

bool Container:: bring_to_back(int a) {
    AbstractFigure* first= getbyId(a);
    if (first !=nullptr) {
        int to_erase = getbyPointer(first);
        if (to_erase>=0) {
            Figures.erase(Figures.begin()+to_erase);
        } else {
            return false;
        }
        Figures.push_front(first);
        current_figure=0;
        return true;
    } else return false;
}

bool Container:: bring_to_front(int a) {
    AbstractFigure* first= getbyId(a);
    if (first !=nullptr) {
        int to_erase = getbyPointer(first);
        if (to_erase>=0) {
            Figures.erase(Figures.begin()+to_erase);
        } else {
            return false;
        }
        Figures.push_back(first);
        current_figure=0;
        return true;
    } else return false;
}
bool Container:: push (AbstractFigure *Fig) {
    for (auto &i : Figures) {
        if (Fig->getId() == i->getId()) {
            return false;
        }
    }
    Figures.push_back(Fig);
    current_figure=0;
    return true;
}
AbstractFigure* Container:: getNext () {
        if (Figures.size() == current_figure) {
            current_figure = 0;
            return nullptr;
        }
    return Figures[current_figure++];
}

Container::~Container () {
    AbstractFigure* temp = getNext();
    while (temp!=nullptr) {
        delete temp;
        temp = getNext();
    }
}

