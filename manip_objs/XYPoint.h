/*
 * File name    : XYPoint.h
 */

#ifndef XYPOINT_H
#define XYPOINT_H

    #import <Foundation/Foundation.h>

    @interface XYPoint : NSObject
    {
        int x;
        int y;
    }
    @property(nonatomic) int x, y;

    - (void)setX:(int)xVal andY:(int)yVal;

    @end

#endif  /* XYPOINT_H */