//
//  main.c
//  DrawShape
//
//  Created by qingyun on 14-10-6.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#include <stdio.h>

#define SHAPENUM        3

// 定义了图形的类型
typedef enum {
    kCircle,
    kRectangle,
    kTriangle
} ShapeType;

// 定义了图形的颜色
typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

// 定义了图形的屏幕区域
typedef struct {
    int x;
    int y;
    int width;
    int height;
} ShapeRect;

// 定义图形
typedef struct {
    ShapeType type;
    ShapeColor color;
    ShapeRect bounds;
} Shape;

void drawCircle(ShapeRect rect, ShapeColor color);
void drawRectangle(ShapeRect rect, ShapeColor color);
void drawTriangle(ShapeRect rect, ShapeColor color);
void drawShapes(Shape *shapes, int number);

int main(int argc, const char * argv[])
{
    // 定义一个图形数组
    Shape shapes[SHAPENUM] = {0};
    
    // circle
    ShapeRect circleRect = {20, 30, 50, 50};
    shapes[0].bounds = circleRect;
    shapes[0].color = kRedColor;
    shapes[0].type = kCircle;
    
    // rectangle
    ShapeRect rectangleRect = {44, 54, 50, 100};
    shapes[1].bounds = rectangleRect;
    shapes[1].color = kGreenColor;
    shapes[1].type = kRectangle;
    
    // triangle
    ShapeRect triangleRect = {90, 90, 77, 66};
    shapes[2].bounds = triangleRect;
    shapes[2].color = kBlueColor;
    shapes[2].type = kTriangle;
    
    drawShapes(shapes, SHAPENUM);
    
    return 0;
}

void drawShapes(Shape *shapes, int number)
{
    for (int i = 0; i < number; i++) {
        // 绘制每个图形
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(shapes[i].bounds, shapes[i].color);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].color);
                break;
            case kTriangle:
                drawTriangle(shapes[i].bounds, shapes[i].color);
                break;
                
            default:
                break;
        }
    }
}

static char *colorName(ShapeColor color)
{
    char *colorStr = NULL;
    switch (color) {
        case kRedColor:
            colorStr = "Red";
            break;
        case kGreenColor:
            colorStr = "Green";
            break;
        case kBlueColor:
            colorStr = "Blue";
            break;
        default:
            break;
    }
    
    return colorStr;
}

void drawCircle(ShapeRect rect, ShapeColor color)
{
    printf("Draw Circle at (%d,%d,%d,%d), fill color is %s\n", rect.x, rect.y, rect.width, rect.height, colorName(color));
}

void drawRectangle(ShapeRect rect, ShapeColor color)
{
    printf("Draw Rectangle at (%d,%d,%d,%d), fill color is %s\n", rect.x, rect.y, rect.width, rect.height, colorName(color));
}

void drawTriangle(ShapeRect rect, ShapeColor color)
{
    printf("Draw Triangle at (%d,%d,%d,%d), fill color is %s\n", rect.x, rect.y, rect.width, rect.height, colorName(color));
}

