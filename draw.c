#include <stdio.h>

#define SHAPENUM  3

//定义了图形的类型
typedef enum {
    kCircle,
    kRectangle,
    kTriangle
} ShapeType;

//定义了图形的颜色
typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

//定义了图形的屏幕的区域
typedef struct {
    int x;
    int y;
    int width;
    int height;
} ShapeRect;

//定义图形
typedef struct {
    ShapeType type;
    ShapeColor color;
    ShapeRect bounds;
} Shape;

void drawCircle(ShapeRect rect,ShapeColor);
void drawRectangle(ShapeRect rect,ShapeColor);
void drawTriangle(ShapeRect rect,ShapeColor);
void drawShapes(Shape *shapes,int number);

int main(int argc,const char *argv[])
{
    //定义一个图形数组
    Shape shapes[SHAPENUM]={0};

    //circle
    ShapeRect circleRect = {20,30,50,50};
    shapes[0].bounds = circleRect;
    shapes[0].color = kRedColor;
    shapes[0].type = kCircle;

    ShapeRect rectangleRect = {40,30,60,50};
    shapes[1].bounds = rectangleRect;
    shapes[1].color = kGreenColor;
    shapes[1].type = kRectangle;

    ShapeRect triangleRect = {40,40,50,50};
    shapes[2].bounds = triangleRect;
    shapes[2].color = kBlueColor;
    shapes[2].type = kTriangle;

    drawShapes(shapes,SHAPENUM);
    return 0;
}

void drawShapes(Shape *shapes,int number)
{
    for (int i = 0;i<number;i++){
        switch (shapes[i].type){
            case kCircle:
                drawCircle(shapes[i].bounds,shapes[i].color);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds,shapes[i].color);
                break;
            case kTriangle:
                drawTriangle(shapes[i].bounds,shapes[i].color);
                break;

            default:
                break;
        }
    }
}

static char *colorName(ShapeColor color)
{
   char *colorStr = NULL;
   switch (color){
       case kRedColor:
           colorStr = "Red";
           break;
       case kGreenColor:
           colorStr = "Green";
           break;
       case kBlueColor:
           colorStr = "Blue";
           break;
               
   }
   return colorStr;
}
void drawCircle(ShapeRect rect,ShapeColor color)
{
    printf("Draw circle at (%d,%d,%d,%d),fill color is %s\n",rect.x,rect.y,rect.width,rect.height,colorName(color));
}
void drawTriangle(ShapeRect rect,ShapeColor color)
{
    printf("Draw circle at (%d,%d,%d,%d),fill color is %s\n",rect.x,rect.y,rect.width,rect.height,colorName(color));
}
void drawRectangle(ShapeRect rect,ShapeColor color)
{
    printf("Draw circle at (%d,%d,%d,%d),fill color is %s\n",rect.x,rect.y,rect.width,rect.height,colorName(color));
}

