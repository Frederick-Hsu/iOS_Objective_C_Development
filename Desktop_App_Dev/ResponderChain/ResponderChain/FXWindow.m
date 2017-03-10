/**************************************************************************************************
 * File name    : FXWindow.m
 * Description  : Customize the class FXWindow, inherited from NSWindow.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  09 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "FXWindow.h"

@implementation FXWindow

    - (void)scrollWheel:(NSEvent *)event
    {
        NSLog(@"%@ scrollWheel", self);
    }

@end
