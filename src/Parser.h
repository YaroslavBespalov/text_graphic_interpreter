#pragma once
#include <iostream>
#include <string>
#include <stdexcept>
#include "AbstractFigure.h"
#include "Figures.h"
#include "Container.h"
#include "Scene.h"


class Parser {
public:
    Parser (Container* Cont);
    bool process_file (std::istream &file);
private:
    int line_number;
    Container* Contain;
    int process_command (std::string &command);
    int process_circle (void);
    int process_rectangle (void);
    int process_square (void);
    int process_triangle (void);
};
