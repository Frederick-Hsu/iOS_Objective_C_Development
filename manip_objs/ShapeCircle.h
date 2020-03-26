/*
 * File name    : ShapeCircle.h
 */

#ifndef SHAPE_CIRCLE_H
#define SHAPE_CIRCLE_H

    #import <Foundation/Foundation.h>
    #import "XYPoint.h"

    @class XYPoint;     /* Forward declaration */

    @interface ShapeCircle : NSObject
    {
        int radius;
        XYPoint *origin;
    }

    @property int radius;
    // @property(nonatomic, retain) XYPoint* origin;

    - (XYPoint*)origin;
    - (void)setOrigin:(XYPoint*)pt;

    - (double)area;
    - (double)perimeter;

    @end

#endif  /* SHAPE_CIRCLE_H */