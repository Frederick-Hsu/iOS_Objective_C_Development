/**************************************************************************************************
 * File name    : NSScrollView+Extras.m
 * Description  : Extend the foundation class NSScrollView.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  08 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "NSScrollView+Extras.h"

@implementation NSScrollView (Extras)

    - (void)disableVerticalScrollWheel:(NSEvent *)event
    {
        float dy = fabs(event.deltaY);
        if ((event.deltaX == 0.0) && (dy >= 0.01))
        {
            return;
        }
        else if ((event.deltaX == 0.0) && (dy == 0.0))
        {
            return;
        }
        else
        {
            [super scrollWheel:event];
        }
    }

@end
