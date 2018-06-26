#include "Parser.h"
static std::string str_token_data;
std::string strtoken(const std::string &in, std::string break_symbs)
{
    if (!in.empty())
        str_token_data = in;
    std::string out;
    while (!str_token_data.empty())
    {
        char a = str_token_data.front();
        str_token_data.erase(str_token_data.begin());
        bool break_ = false;
        for (auto h = break_symbs.begin(); h != break_symbs.end(); h++)
            if (a == *h)
            {
                break_ = true;
                break;
            }
        if ((break_) && (out.empty()))
            continue;
        if (break_)
            return out;
        out.push_back(a);
    }
    return out;
}

Parser:: Parser (Container* Cont) {
    Contain = Cont;
}


bool Parser:: process_file (std::istream &file) {
    line_number = 0;
    while (!file.eof()) {
        std::string str;
        ++line_number;
        std::getline(file, str);
        int t = process_command(str);
        if (t == 1) return 0;
        if (t == 2) return 1;
        }
    
    return 0;
    }

int Parser:: process_command (std::string &command) {
    if (command.empty()) return 1;
    std::string word;
    word = strtoken(command, " ");
    if (word == "create") {
        word = strtoken("", " ");
        if (word == "circle") {
            return process_circle();
        }
        if (word == "rectangle") {
            return process_rectangle();
        }
        if (word == "square") {
            return process_square();
        }
        if (word == "triangle") {
            return process_triangle();
        } else {
            std::cerr<<"unknown figure in line number #"<< line_number << std::endl;
            return 2;
        }
    } else if (word == "set") {
        word = strtoken("", " ");
        if (word != "color") {
            std::cerr<<"uknown command in line number #"<< line_number << std::endl;
            return 2;
        } else {
            int id, color;
            try {
                word = strtoken("", " ");
                id = std::stoi(word);
            } catch (const std::exception&) {
                std::cerr <<"wrong id in line #" << line_number << std::endl;
                return 2;
            }
            if (id < 0) {
                std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
                return 2;
            }
            
            try {
                word = strtoken("", " ");
                color = std::stoi(word);
            } catch (const std::exception&) {
                std::cerr <<"wrong color in line #" << line_number << std::endl;
                return 2;
            }
            if  (color < 0 || color > 3) {
                std::cerr << "Wrong color in line#" << line_number << std::endl;
                return 2;
            }
            
            (*(Contain->getbyId(id))).color = color;
        }
    } else if (word == "move") {
        int id;
        double x,y;
        try {
            word = strtoken("", " ");
            id = std::stoi(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong id in line #" << line_number << std::endl;
            return 2;
        }
        if (id < 0) {
            std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
            return 2;
        }
        try {
            word = strtoken("", " ");
            x = std::stod(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong x coordinate in line #" << line_number << std::endl;
            return 2;
        }
        
        try {
            word = strtoken("", " ");
            y = std::stod(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong y coordinate in line #" << line_number << std::endl;
            return 2;
        }
        (*(Contain->getbyId(id))).setPosition(x, y);
    } else if (word == "scale") {
        int id;
        double scale;
        try {
            word = strtoken("", " ");
            id = std::stoi(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong id in line #" << line_number << std::endl;
            return 2;
        }
        if (id < 0) {
            std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
            return 2;
        }
        try {
            word = strtoken("", " ");
            scale = std::stod(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong scale in line #" << line_number << std::endl;
            return 2;
        }
        if (id <= 0) {
            std::cerr << "Wrong scale. Scale is <=0. line #" << line_number << std::endl;
            return 2;
        }
        (*(Contain->getbyId(id))).scale = scale;
    } else if (word == "bring") {
        word = strtoken("", " ");
        if (word == "to") {
            word = strtoken("", " ");
            if (word == "back") {
                int id;
                try {
                    word = strtoken("", " ");
                    id = std::stoi(word);
                } catch (const std::exception&) {
                    std::cerr <<"wrong id in line #" << line_number << std::endl;
                    return 2;
                }
                if (id < 0) {
                    std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
                    return 2;
                }
                if (!Contain->bring_to_back(id)){
                    std::cerr << "Wrong id. Id doesn't exist. line #" << line_number << std::endl;
                    return 2;
                }
            } else if (word == "front") {
                int id;
                try {
                    word = strtoken("", " ");
                    id = std::stoi(word);
                } catch (const std::exception&) {
                    std::cerr <<"wrong id in line #" << line_number << std::endl;
                    return 2;
                }
                if (id < 0) {
                    std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
                    return 2;
                }
                if (!Contain->bring_to_front(id)){
                    std::cerr << "Wrong id. Id doesn't exist. line #" << line_number << std::endl;
                    return 2;
                }
            } else {
                std::cerr << "Wrong command in line #" << line_number << std::endl;
                return 2;
            }
        } else {
            std::cerr << "Wrong command in line #" << line_number << std::endl;
            return 2;
        }
    } else if (word == "draw") {
        word = strtoken("", " ");
        std::string file = word;
        double scene_x, scene_y, scene_w, scene_h;
        int width, height;
        try {
            word = strtoken("", " ");
            scene_x = std::stod(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong scene x coordinate in line #" << line_number << std::endl;
            return 2;
        }
        try {
            word = strtoken("", " ");
            scene_y = std::stod(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong scene y coordinate in line #" << line_number << std::endl;
            return 2;
        }
        try {
            word = strtoken("", " ");
            scene_w = std::stod(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong scene_w coordinate in line #" << line_number << std::endl;
            return 2;
        }
        try {
            word = strtoken("", " ");
            scene_h = std::stod(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong scene_h coordinate in line #" << line_number << std::endl;
            return 2;
        }
        try {
            word = strtoken("", " ");
            width = std::stoi(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong width in line #" << line_number << std::endl;
            return 2;
        }
        if (width <= 0) {
            std::cerr << "Wrong width. Width must be positive. line #" << line_number << std::endl;
            return 2;
        }
        
        try {
            word = strtoken("", " ");
            height = std::stoi(word);
        } catch (const std::exception&) {
            std::cerr <<"wrong height in line #" << line_number << std::endl;
            return 2;
        }
        if (height <= 0) {
            std::cerr << "Wrong height. Height must be positive. line #" << line_number << std::endl;
            return 2;
        }
        Scene scene = Scene(scene_x, scene_y, scene_w, scene_h, width, height);
        std::ofstream outfile(file);
        if ( outfile.is_open() ){
        scene.draw(outfile, *Contain);
        } else {
            std::cerr << " '" << file << "' cant be open " << std::endl;
            return 2;
        }
    } else {
        return 2;
    }
    return 0;
}


/*##############################################*/

int Parser::process_circle (void) {
    int id, color;
    double x, y, r;
    std::string word;
    try {
        word = strtoken("", " ");
        id = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong id in line #" << line_number << std::endl;
        return 2;
    }
    if (id < 0) {
        std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        color = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong color in line #" << line_number << std::endl;
        return 2;
    }
    if  (color < 0 || color > 3) {
        std::cerr << "Wrong color in line#" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        x = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong x coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        y = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong y coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    
    try {
        word = strtoken("", " ");
        r = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong radius in line #" << line_number << std::endl;
        return 2;
    }
    
    if (r < 0) {
        std::cerr << "wrong radius in line #" << line_number << std::endl;
        return 2;
    }
    Circle* temp = new Circle(id, color, x, y, r);
    if (Contain->push(temp) == false) {
        std::cerr << "ERROR: id already exists. line #" << line_number << std::endl;
        delete temp;
        return 2;
    }
    return 0;
}

/*##############################################*/

int Parser:: process_rectangle(void) {
    int id, color;
    double x, y, w, h;
    std::string word;
    try {
        word = strtoken("", " ");
        id = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong id in line #" << line_number << std::endl;
        return 2;
    }
    if (id < 0) {
        std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        color = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong color in line #" << line_number << std::endl;
        return 2;
    }
    if  (color < 0 || color > 3) {
        std::cerr << "Wrong color in line#" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        x = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong x coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        y = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong y coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        w = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong weight coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        h = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong height coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    Rectangle* temp =new Rectangle(id, color, x, y, w, h);
    if (Contain->push(temp) == false) {
        std::cerr << "ERROR: id already exists. line #" << line_number << std::endl;
        delete temp;
        return 2;
    }
    return 0;
}

/*##############################################*/

int Parser::process_square(void) {
    int id, color;
    double x, y, side;
    std::string word;
    try {
        word = strtoken("", " ");
        id = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong id in line #" << line_number << std::endl;
        return 2;
    }
    if (id < 0) {
        std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        color = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong color in line #" << line_number << std::endl;
        return 2;
    }
    if  (color < 0 || color > 3) {
        std::cerr << "Wrong color in line#" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        x = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong x coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        y = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong y coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        side = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong side coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    
    Square* temp = new Square(id, color, x, y, side);
    if (Contain->push(temp) == false) {
        std::cerr << "ERROR: id already exists. line #" << line_number << std::endl;
        delete temp;
        return 2;
    }
    return 0;
}

/*##############################################*/

int Parser::process_triangle(void) {
    int id, color;
    double x, y, a, b;
    std::string word;
    try {
        word = strtoken("", " ");
        id = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong id in line #" << line_number << std::endl;
        return 2;
    }
    if (id < 0) {
        std::cerr << "Wrong id. id is negative. line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        color = std::stoi(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong color in line #" << line_number << std::endl;
        return 2;
    }
    if  (color < 0 || color > 3) {
        std::cerr << "Wrong color in line#" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        x = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong x coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        y = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong y coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        a = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong a coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    try {
        word = strtoken("", " ");
        b = std::stod(word);
    } catch (const std::exception&) {
        std::cerr <<"wrong b coordinate in line #" << line_number << std::endl;
        return 2;
    }
    
    Triangle* temp = new Triangle(id, color, x, y, a, b);
    if (Contain->push(temp) == false) {
        std::cerr << "ERROR: id already exists. line #" << line_number << std::endl;
        delete temp;
        return 2;
    }
    return 0;
}

/*##############################################*/




