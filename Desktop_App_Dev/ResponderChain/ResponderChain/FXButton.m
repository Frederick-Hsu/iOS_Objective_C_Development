/**************************************************************************************************
 * File name    : FXButton.m
 * Description  : Customize the class FXButton, inherited from NSButton.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  09 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "FXButton.h"

@implementation FXButton

    - (void)scrollWheel:(NSEvent *)event
    {
        NSLog(@"%@ scrollWheel", self);
    }


@end
