#ifndef PT_H
#define PT_H

    #import <Cocoa/Cocoa.h>

    @interface PT : NSObject
    {
        int x;
    }

    - (void)setX:(int)xval;
    - (void)print;
    @end

    void utilizeFnctPointer(void);

#endif  /* PT_H */