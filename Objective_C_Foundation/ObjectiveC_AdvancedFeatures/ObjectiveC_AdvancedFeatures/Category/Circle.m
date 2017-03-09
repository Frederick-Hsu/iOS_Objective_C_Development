/**************************************************************************************************
 * File nae     : Circle.m
 * Description  : Implement the class Circle, to study the class extension.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  09 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Circle.h"

#define PI  3.1415926

@interface Circle ()

    @property (nonatomic, readwrite) double radius;
    @property (nonatomic, readwrite) double area;

    -(double)calculateArea;

@end

@implementation Circle

    -(void)makeCircle : (double)r
    {
        self.radius = r;
        self.area = PI * self.radius * self.radius;
    }

    -(double)calculateArea
    {
        self.area = PI * self.radius * self.radius;
        return self.area;
    }

@end