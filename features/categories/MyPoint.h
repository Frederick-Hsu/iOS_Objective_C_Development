#ifndef MY_POINT_H
#define MY_POINT_H

    #import <Foundation/Foundation.h>

    @interface MyPoint : NSObject
    {
        int x;
        int y;
    }
    @property (nonatomic) int x;
    @property (nonatomic) int y;

    - (id)initWithX:(int)xval andY:(int)yval;
    - (void)print;
    @end

#endif  /* MY_POINT_H */