#include "Figures.h"

double Modify_axis(int index,int max_index, double coordinate_0, double width) {
    return coordinate_0+index*width/(max_index+1);
}

Circle:: Circle (int id, int color, double x, double y, double r) : AbstractFigure(id,color, x,y), R(r)
{
}
void Circle::Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height) {
    apply_scale();
    for (int i = 0; i < output.size(); ++i) {
        for (int j = 0; j < output[i].size(); ++j)
            {
                double x_scene = Modify_axis(i,output.size()-1,x,width);
                double y_scene = Modify_axis(j,output[i].size()-1,y,height);
                if (test_point(std::pair <double,double>(x_scene,y_scene))) {
                    output[i][j] = color;
                }
            }
    }
}

void Circle::apply_scale() {
    real_position = position;
    real_R = scale*R;
};

bool Circle::test_point (std::pair <double,double> pos) const {
    double radius = ((pos.first-real_position.first)*(pos.first-real_position.first) +
                     (pos.second-real_position.second)*(pos.second-real_position.second));
    return radius<=(real_R*real_R);
};
Square:: Square (int id, int color, double x, double y, double size) : AbstractFigure(id, color,x ,y),
width(size)
{
    
}
void Square::Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height) {
    apply_scale();
    for (int i = 0; i < output.size(); ++i) {
        for (int j = 0; j < output[i].size(); ++j)
        {
            double x_scene = Modify_axis(i,output.size()-1,x,width);
            double y_scene = Modify_axis(j,output[i].size()-1,y,height);
            if (test_point(std::pair <double,double>(x_scene,y_scene))) {
                output[i][j] = color;
            }
        }
    }
}

void Square::apply_scale() {
    real_width = scale * width;
    real_position.first = position.first + (width/2 - scale*width/2);
    real_position.second = position.second + (width/2 - scale*width/2);
}
bool Square::test_point(std::pair <double,double> pos)  const {
    return ((pos.first >= real_position.first) && (pos.first <=(real_width + real_position.first)) &&
            ((pos.second >= real_position.second) && (pos.second <=(real_width+real_position.second))));
}

Rectangle:: Rectangle (int id, int color, double x, double y, double w, double h) :
Square (id, color, x, y, w), height(h)
{
}
void Rectangle::Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height) {
    apply_scale();
    for (int i = 0; i < output.size(); ++i) {
        for (int j = 0; j < output[i].size(); ++j)
        {
            double x_scene = Modify_axis(i,output.size()-1,x,width);
            double y_scene = Modify_axis(j,output[i].size()-1,y,height);
            if (test_point(std::pair <double,double>(x_scene,y_scene))) {
                output[i][j] = color;
            }
        }
    }
}

bool Rectangle::test_point(std::pair <double,double> pos) const {
    return (((pos.first >= real_position.first) && (pos.first <=real_width + real_position.first)) &&
            ((pos.second >= real_position.second) && (pos.second <=real_height+real_position.second)));
}

void Rectangle::apply_scale() {
    real_width = scale * width;
    real_height = scale * height;
    real_position.first = position.first + (width/2 - scale*width/2);
    real_position.second = position.second + (height/2 - scale*height/2);
}

Triangle:: Triangle (int id, int color, double x, double y, double a, double b) :
AbstractFigure(id,color, x,y), size_1(a), size_2(b)
{
}
void Triangle::Draw(std::vector<std::vector<int>> &output, double x, double y, double width, double height) {
    apply_scale();
    for (int i = 0; i < output.size(); ++i) {
        for (int j = 0; j < output[i].size(); ++j)
        {
            double x_scene = Modify_axis(i,output.size()-1,x,width);
            double y_scene = Modify_axis(j,output[i].size()-1,y,height);
            if (test_point(std::pair <double,double>(x_scene,y_scene)))
                output[i][j]=this->color;
            }
        }
    }


void Triangle::apply_scale() {
    real_size_1 = scale * size_1;
    real_size_2 = scale * size_2;
    real_position.first = position.first + (((size_1)/3)-scale*((size_1)/3));
    real_position.second = position.second + (((size_2)/3)-scale*((size_2)/3));
}

bool Triangle::test_point(std::pair <double,double> pos) const {
    double x1,y1,x2,y2;
    x1 = real_position.first;
    y1 = real_position.second;
    x2 = real_position.first + real_size_1;
    y2 = real_position.second + real_size_2;
    double a = (y2-y1)/(x2-x1);
    double b = y1-a*x1;
    return ((real_position.first <= pos.first) && (pos.first <= (real_position.first + real_size_1)) && (real_position.second <= pos.second) && (pos.second <= a*pos.first+b));
}
