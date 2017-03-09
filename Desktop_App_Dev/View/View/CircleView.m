/**************************************************************************************************
 * File name    : CircleView.m
 * Description  : Draw a cicle view. Implement the class CircleView.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  07 March 2017
 * COpyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "CircleView.h"

@implementation CircleView

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    /* Drawing code here. */
    [[NSColor purpleColor] setFill];
    
    NSBezierPath *circlePath = [NSBezierPath bezierPathWithOvalInRect:dirtyRect];
    [circlePath fill];
}

@end
