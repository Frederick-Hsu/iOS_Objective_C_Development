/*
 * File name    : testing.m
 */

#import "testing.h"
#import "ShapeCircle.h"

void accessCompositeObjects(void)
{
    ShapeCircle *shcircle = [[ShapeCircle alloc] init];
    XYPoint *orgPt = [[XYPoint alloc] init];

    [orgPt setX:100 andY:200];
    shcircle.radius = 5;
    shcircle.origin = orgPt;
    // [shcircle setOrigin:orgPt];

    NSLog(@"The circle shape has radius: %d", shcircle.radius);
    NSLog(@"His origin at(%d, %d)", shcircle.origin.x, shcircle.origin.y);

    NSLog(@"Area = %f, Perimeter = %f", [shcircle area], [shcircle perimeter]);
    NSLog(@"Origin at(%d, %d)", [[shcircle origin] x], [[shcircle origin] y]);

    /* Reset the origin coordinate */
    [orgPt setX:50 andY:50];
    NSLog(@"After reset the circle origin coordinate, origin at(%d, %d)", shcircle.origin.x, shcircle.origin.y);

    [orgPt release];
    [shcircle.origin release];
    [shcircle release];
}