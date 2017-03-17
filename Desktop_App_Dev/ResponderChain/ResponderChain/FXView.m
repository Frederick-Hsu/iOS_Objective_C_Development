/**************************************************************************************************
 * File name    : FXView.m
 * Description  : Customize the class FXView, inherited from NSView.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  09 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "FXView.h"

@implementation FXView

    - (void)scrollWheel:(NSEvent *)event
    {
        NSLog(@"%@ scrollWheel", self);
    }

@end
