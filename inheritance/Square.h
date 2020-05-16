#ifndef SQUARE_H
#define SQUARE_H

    #import <Cocoa/Cocoa.h>
    #import "Rectangle.h"

    @interface Square : Rectangle
    {
        // int length;
    }

    - (id)initWithLength:(int)length;
    - (void)setLength:(int)len;
    - (int)length;
    @end

#endif  /* SQUARE_H */