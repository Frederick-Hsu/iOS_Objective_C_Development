#ifndef MISC_H
#define MISC_H

    #import <Cocoa/Cocoa.h>

    #undef DO_NOT_OVERRIDE_DESC_METHOD

    @interface ClassA : NSObject
    {
        int x;
    }
    @property (nonatomic) int x;

    - (void)initVar;
    - (void)initVar:(int)xval;
    - (id)initVarX:(int)xval;
    - (void)printVar;
    @end

    @interface ClassB : ClassA
    {
        int y;
    }
    - (id)initVarX:(int)xval andY:(int)yval;
    - (void)initVar;
    - (void)printVar;
    #if defined (DO_NOT_OVERRIDE_DESC_METHOD)
        - (NSString*)description;
    #endif
    @end


#endif  /* MISC_H */