#ifndef DYNAMIC_BINDING_H
#define DYNAMIC_BINDING_H

    #import <Foundation/Foundation.h>

    @interface Base : NSObject
    {
        int x;
    }
    - (void)initWithX:(int)xval;
    - (void)print;
    - (void)printMembers;
    @end

    @interface Derived : Base
    {
        int y;
    }
    - (void)initWithX:(int)xval andY:(int)yval;
    - (void)print;
    - (void)printMembers;
    @end

    void downCast(void);
    void convertID(void);


#endif  /* DYNAMIC_BINDING_H */