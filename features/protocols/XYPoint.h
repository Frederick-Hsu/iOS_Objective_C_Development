#ifndef XYPOINT_H
#define XYPOINT_H

    #import <Foundation/Foundation.h>

    @interface XYPoint : NSObject <NSCopying>
    {
        int x;
        int y;
    }
    - (void)print;
    - (void)setX:(int)xval andY:(int)yval;
    - (id)copyWithZone:(NSZone*)zone;
    @end

    @interface ThreeDPoint : XYPoint
    {
        int z;
    }
    - (void)print;
    - (void)setX:(int)xval andY:(int)yval andZ:(int)zval;
    - (id)copyWithZone:(NSZone*)zone;
    @end

    void copyObject(void);

#endif  /* XYPOINT_H */