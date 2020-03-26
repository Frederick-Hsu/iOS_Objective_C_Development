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
#import "testing.h"

int main(int argc, char* argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    Circle* circle = [[Circle alloc] init];
    [circle setR:3 andX:4 andY:5];
    [circle print];
    NSLog(@"sum = %d", [Circle allNum]);

    circle.radius = 100;    /* Call the setter method */
    // NSLog(@"Circle radius: %d, x: %d, y: %d", [circle radius], [circle x], [circle y]);     /* call the getter method */
    NSLog(@"Circle radius: %d, x: %d, y:%d", [circle radius], circle.gr/* or [circle gr]*/, [circle y]);
    [circle setRadius:50];
    [circle sr:9];
    NSLog(@"Now the radius had been changed to %d", [circle radius]);

    [circle release];

    accessCompositeObjects();

    [pool drain];
    return 0;
}