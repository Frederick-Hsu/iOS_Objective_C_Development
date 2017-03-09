/**************************************************************************************************
 * File name    : BorderFrameView
 * Description  : Draw a frame view, with only border, not fill.  Implement the class BorderFrameView
 * Creator      : Frederick Hsu
 * Creation date: Tue.  07 March 2017
 * COpyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/


#import "BorderFrameView.h"

@interface BorderFrameView ()

    - (void)drawRect:(NSRect)dirtyRect BorderColor:(NSColor *)yourColor;

@end


@implementation BorderFrameView

    - (void)drawRect:(NSRect)dirtyRect
    {
        [super drawRect:dirtyRect];
        
        /* Drawing code here. */
        
        [[NSColor blueColor] setStroke];
        NSBezierPath *borderCurvePath = [NSBezierPath bezierPathWithOvalInRect:dirtyRect];
        [borderCurvePath stroke];
    }

    - (void)drawRect:(NSRect)dirtyRect BorderColor:(NSColor *)yourColor
    {
        [super drawRect:dirtyRect];
        
        [yourColor setStroke];
        NSBezierPath *borderCurvePath = [NSBezierPath bezierPathWithOvalInRect:dirtyRect];
        [borderCurvePath stroke];
    }

@end
