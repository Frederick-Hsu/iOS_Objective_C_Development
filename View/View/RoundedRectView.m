/**************************************************************************************************
 * File name    : RoundedRectView.m
 * Description  : To draw a rounded rect view, implement the class RoundedRectView.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  07 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "RoundedRectView.h"


@implementation RoundedRectView

    - (void)drawRect:(NSRect)dirtyRect
    {
        [super drawRect:dirtyRect];
        
        /* Drawing code here. */
        [[NSColor blueColor] setFill];
        NSRect bounds = [self bounds];
        
        NSBezierPath *roundedRect = [NSBezierPath bezierPath];
        [roundedRect appendBezierPathWithRoundedRect:bounds xRadius:60 yRadius:60];
        [roundedRect fill];
    }

@end
