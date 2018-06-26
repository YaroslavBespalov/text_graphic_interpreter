#include "Parser.h"
#include <cstdlib>
#include <cstdio>
#include <unistd.h>

int main(int argc, const char * argv[]) {
    if (argc != 2) {
        std::cout << "usage: Interpr <Filename>" << std::endl;
        return 1;
    }
    Container Data;
    Parser parse(&Data);
    std::ifstream str;
    str.clear();
    str.open(argv[1],std::ios_base::in);
    if (str.is_open()) {
        if (parse.process_file(str)!=0) {
            std::cerr<< "file cant be parsed" << std::endl;
        }
    } else {
            std::cerr<<"file '" << argv[1] << "' cant be open"  <<std::endl;
            return 1;
        }
    str.close();
    return 0;
}
