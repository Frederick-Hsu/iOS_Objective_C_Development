#ifndef RECTANGLE_H
#define RECTANGLE_H

    #import <Cocoa/Cocoa.h>

    @interface Rectangle : NSObject
    {
        int width;
        int height;
    }
    @property(nonatomic) int width, height;

    - (id)initWithWidth:(int)wd andHeight:(int)ht;
    - (int)area;
    - (int)perimeter;
    - (void)setWidth:(int)_width andHeight:(int)_height;
    @end

#endif  /* RECTANGLE_H */