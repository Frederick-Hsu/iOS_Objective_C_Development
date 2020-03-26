/**************************************************************************************************
 * Project name : manip_objs
 * Description  : Study how to create class, instantiate objects, and manipulate them as you want 
 *              : in Objective-C programming.
 * ================================================================================================
 * File name    : main.m
 * Description  : This file implements the entry function main(). 
 *              : Program execution starts and ends here.
 * Creator      : Frederique Hsu
 * Creation date: Thur. 26 March 2020
 * Copyright(C) 2020    All rights reserved.
 *
 **************************************************************************************************/

#import <Foundation/Foundation.h>
#import "Circle.h"

int main(int argc, char* argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    Circle* circle = [[Circle alloc] init];
    [circle setR:3 andX:4 andY:5];
    [circle print];
    NSLog(@"sum = %d", [Circle allNum]);
    [circle release];

    [pool drain];
    return 0;
}