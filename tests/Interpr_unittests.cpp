#include "gtest/gtest.h"
#include <sstream>
#include "Container.h"
#include "AbstractFigure.h"
#include "Scene.h"
#include "Parser.h"
#include "Figures.h"
#include <iostream>


TEST(Interpretator, Set_Color_And_Create_Circle)
{
    Circle *Circl= new Circle(1, 3, 2.0, 3.0, 4.0);
    std::stringstream file;
    Container Data;
    Data.push(Circl);
    Parser parse(&Data);
    file << "set color 1 2";
    parse.process_file(file);
    EXPECT_EQ(2, (*Circl).color);
}

TEST(Interpretator, Set_Color_And_Create_Square)
{
    Square *Squar= new Square(1, 2, 1.0, 2.0, 3.0);
    std::stringstream file;
    Container Data;
    Data.push(Squar);
    Parser parse(&Data);
    file << "set color 1 1";
    parse.process_file(file);
    EXPECT_EQ(1, (*Squar).color);
}

TEST(Interpretator, Set_Color_And_Create_Triangle)
{
    Triangle *Tri= new Triangle(1, 1, 1.0, 2.0, 3.0, 4.0);
    std::stringstream file;
    Container Data;
    Data.push(Tri);
    Parser parse(&Data);
    file << "set color 1 3";
    parse.process_file(file);
    EXPECT_EQ(3, (*Tri).color);
}

TEST(Interpretator, Set_Color_And_Create_Rectangle)
{
    Rectangle *Rec= new Rectangle(1, 2, 1.0, 2.0, 3.0, 4.0);
    std::stringstream file;
    Container Data;
    Data.push(Rec);
    Parser parse(&Data);
    file << "set color 1 3";
    parse.process_file(file);
    EXPECT_EQ(3, (*Rec).color);
}

TEST(Interpretator, Create_Circle_And_Move)
{
    Circle *Circl = new Circle(1, 3, 2.0, 3.0, 4.0);
    (*Circl).setPosition(2.0, 3.0);
    ASSERT_EQ(4.0, (*Circl).position.first);
    ASSERT_EQ(6.0, (*Circl).position.second);
}

TEST(Interpretator, Create_Triangle_And_Move)
{
    Triangle *Tri = new Triangle (1, 1, 1.0, 2.0, 3.0, 4.0);
    (*Tri).setPosition(2.0, 3.0);
    ASSERT_EQ(3.0, (*Tri).position.first);
    ASSERT_EQ(5.0, (*Tri).position.second);
}

TEST(Interpretator, Create_Square_And_Move)
{
    Square *Squar= new Square(1, 2, 1.0, 2.0, 3.0);
    (*Squar).setPosition(3.0, 2.0);
    ASSERT_EQ(4.0, (*Squar).position.first);
    ASSERT_EQ(4.0, (*Squar).position.second);
}

TEST(Interpretator, Create_Rectangle_And_Move)
{
    Rectangle *Rec= new Rectangle(1, 2, 1.0, 2.0, 3.0, 4.0);
    (*Rec).setPosition(5.0, 5.0);
    ASSERT_EQ(6.0, (*Rec).position.first);
    ASSERT_EQ(7.0, (*Rec).position.second);
}

TEST (Interpretator, Create_Rectangle_and_scale)
{
    std::string str1 =
    "..........\n"
    "..........\n"
    "..........\n"
    "...ooo....\n"
    "...ooo....\n"
    "...ooo....\n"
    "...ooo....\n"
    "..........\n"
    "..........\n"
    "..........\n";
    
    std::string str =
    "..........\n"
    "..........\n"
    "..ooooo...\n"
    "..ooooo...\n"
    "..ooooo...\n"
    "..ooooo...\n"
    "..ooooo...\n"
    "..ooooo...\n"
    "..........\n"
    "..........\n";
    
    std::stringstream file;
    Container Data;
    Parser parse(&Data);
    file << "create rectangle 1 2 3.0 3.0 2.0 3.0\n";
    file << "scale 1 2\n";
    parse.process_file(file);
    Scene scene = Scene(0.0, 0.0, 10.0, 10.0, 10, 10);
    std::ostringstream output;
    scene.draw(output, Data);
    ASSERT_EQ(1,output.str()==str);
}

TEST (Interpretator, Create_Circle_and_scale)
{
    std::string str =
    "..........\n"
    "....o.....\n"
    "..ooooo...\n"
    ".ooooooo..\n"
    ".ooooooo..\n"
    "ooooooooo.\n"
    ".ooooooo..\n"
    ".ooooooo..\n"
    "..ooooo...\n"
    "....o.....\n";
    
    std::stringstream file;
    Container Data;
    Parser parse(&Data);
    file << "create circle 1 2 4.0 4.0 2.0 \n";
    file << "scale 1 2\n";
    parse.process_file(file);
    Scene scene = Scene(0.0, 0.0, 10.0, 10.0, 10, 10);
    std::ostringstream output;
    scene.draw(output, Data);
    ASSERT_EQ(1,output.str()==str);
}

TEST (Interpretator, Create_Square_and_scale)
{
    std::string str =
    "..........\n"
    "..........\n"
    "..oooooo..\n"
    "..oooooo..\n"
    "..oooooo..\n"
    "..oooooo..\n"
    "..oooooo..\n"
    "..oooooo..\n"
    "..........\n"
    "..........\n";
    
    std::stringstream file;
    Container Data;
    Parser parse(&Data);
    file << "create square 1 2 3.0 3.0 3.0 \n";
    file << "scale 1 2\n";
    parse.process_file(file);
    Scene scene = Scene(0.0, 0.0, 10.0, 10.0, 10, 10);
    std::ostringstream output;
    scene.draw(output, Data);
    ASSERT_EQ(1,output.str()==str);
}


TEST (Interpretator, Create_Triangle_and_scale)
{
    std::string str =
    "..........\n"
    "..........\n"
    "......o...\n"
    ".....oo...\n"
    ".....oo...\n"
    "....ooo...\n"
    "...oooo...\n"
    "...oooo...\n"
    "..........\n"
    "..........\n";
    
    std::stringstream file;
    Container Data;
    Parser parse(&Data);
    file << "create triangle 1 2 3.0 3.0 2.0 3.0\n";
    file << "scale 1 2\n";
    parse.process_file(file);
    Scene scene = Scene(0.0, 0.0, 10.0, 10.0, 10, 10);
    std::ostringstream output;
    scene.draw(output, Data);
    ASSERT_EQ(1,output.str()==str);
}




TEST(Interpretator, Draw_and_Bring_to_back)
{
    std::string str =
    "..........\n"
    "...****...\n"
    "...****...\n"
    ".oo****...\n"
    ".oo****...\n"
    ".oo****...\n"
    ".oo****...\n"
    ".oooo.....\n"
    ".oooo.....\n"
    "..........\n";

    std::stringstream file;
    Container Data;
    Parser parse(&Data);
    file << "create rectangle 1 3 3.0 3.0 3.0 5.0\n";
    file << "create rectangle 2 2 1.0 1.0 3.0 5.0\n";
    file << "bring to back 2\n";
    parse.process_file(file);
    Scene scene = Scene(0.0, 0.0, 10.0, 10.0, 10, 10);
    std::ostringstream output;
    scene.draw(output, Data);
    ASSERT_EQ(1, output.str()==str);
}

TEST(Interpretator, Draw_and_Bring_to_front)
{
    
    std::string str =
    "..........\n"
    "...****...\n"
    "...****...\n"
    ".oo****...\n"
    ".oo****...\n"
    ".oo****...\n"
    ".oo****...\n"
    ".oooo.....\n"
    ".oooo.....\n"
    "..........\n";
    
    std::stringstream file;
    Container Data;
    Parser parse(&Data);
    file << "create rectangle 1 3 3.0 3.0 3.0 5.0\n";
    file << "create rectangle 2 2 1.0 1.0 3.0 5.0\n";
    file << "bring to front 1\n";
    parse.process_file(file);
    Scene scene = Scene(0.0, 0.0, 10.0, 10.0, 10, 10);
    std::ostringstream output;
    scene.draw(output, Data);
    ASSERT_EQ(1, output.str()==str);
}

