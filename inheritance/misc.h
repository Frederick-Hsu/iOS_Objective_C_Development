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
    @end

    @interface ClassB : ClassA
    {
        int y;
    }
    - (void)initVar;
    - (void)printVar;
    #if defined (DO_NOT_OVERRIDE_DESC_METHOD)
        - (NSString*)description;
    #endif
    @end


#endif  /* MISC_H */