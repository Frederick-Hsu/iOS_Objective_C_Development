#ifndef MY_POINT_H
#define MY_POINT_H

    #import <Foundation/Foundation.h>

    @interface MyPoint : NSObject
    {
        int x;
        int y;
    }
    @property(nonatomic) int x, y;

    - (void)setX:(int)_x andY:(int)_y;
    @end

#endif  /* MY_POINT_H */