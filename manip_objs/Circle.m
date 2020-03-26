/**************************************************************************************************
 * File name    : Circle.m
 * Description  : Implement the class "Circle".
 * Creator      : Frederick Hsu
 * Creation date: Thu.  26 March 2020
 * Copyright(C) 2020    All rights reserved.
 *
 **************************************************************************************************/

#import "Circle.h"

@implementation Circle

// @synthesize radius;
// @synthesize x;
// @synthesize y;

- (void)print
{
    NSLog(@"radius is: %d", radius);
    NSLog(@"The coordinate of center of circle, x = %d, y = %d", x, y);
}

- (void)setR:(int)_r andX:(int)_x andY:(int)_y
{
    radius = _r;
    x = _x;
    y = _y;
}

+ (int)allNum
{
    return sum;
}

@end