#ifndef NEW_POINT_H
#define NEW_POINT_H

    #import "MyPoint.h"

    @interface MyPoint (MyPointExtension)
    - (void)moveTo:(int)xcorr :(int)ycorr;
    - (void)print;
    @end

    void extendClassMethods(void);

#endif  /* NEW_POINT_H */