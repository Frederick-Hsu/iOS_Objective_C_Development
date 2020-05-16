#ifndef CIRCLE_H
#define CIRCLE_H

    #import <Cocoa/Cocoa.h>
    #import "MyPoint.h"

    @interface Circle : NSObject
    {
        MyPoint *pnt;
        int radius;
    }
    @property(nonatomic, retain) MyPoint* pnt;

    - (id)initPoint:(MyPoint*)_p andRadius:(int)_r;
    - (void)dealloc;
    @end

    void unitTestCircle(void);

#endif  /* CIRCLE_H */