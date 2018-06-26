This project is an interpreter of text files describing commands over graphic figures.

Build instructions:
```
# clone repo and download googletests
git clone https://github.com/YaroslavBespalov/text_graphic_interpreter
cd text_graphic_interpreter
git submodule update --init --recursive

# make build directory
mkdir build
cd build

# generate projects
cmake ..

# build
make

# run unittests
./Interpr_unittests

# run program
put Figures file <*.txt> in build directory
./Interpr <*.txt>
when program is ended, output file will be in the same directory

#List of commands that u can use in Figure.txt:
create circle <id> <color> <x> <y> <radius>
create rectangle <id> <color> <x> <y> <w> <h>
create square <id> <color> <x> <y> <side>
create triangle <id> <color> <x> <y> <a> <b>
set color <id> <color>
move <id> <dx> <dy>
scale <id> <scale>
bring to back <id>
bring to front <id>
draw <filename> <scene_x> <scene_y> <scene_w> <scene_h> <width> <height>

```

