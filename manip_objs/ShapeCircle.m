/*
 * File name    : ShapeCircle.m
 */

#import "ShapeCircle.h"

#define SHADOW_COPY     1
#define DEEP_COPY       2
#define COPY            DEEP_COPY


@implementation ShapeCircle

@synthesize radius;
// @synthesize origin;

- (XYPoint*)origin
{
    return origin;
}

- (void)setOrigin:(XYPoint *)pt
{
    #if (COPY == SHADOW_COPY)
        origin = pt;    /* Shadow copy */
    #elif (COPY == DEEP_COPY)
        if (origin)
        {
            [origin release];
        }
        origin = [[XYPoint alloc] init];    /* Allocate a new memory block */
        [origin setX:[pt x] andY:pt.y];
    #endif
}

- (double)area
{
    return 3.14 * radius * radius;
}

- (double)perimeter
{
    return 2 * 3.14 * radius;
}

@end