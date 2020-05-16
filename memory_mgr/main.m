/**************************************************************************************************
 * Project name : memory_mgr
 * Description  : Study how to manage the memory for various objects in Objective-C program.
 * ================================================================================================
 * File name    : main.m
 * Description  : This file implements the main() entry function.
 * Creator      : Frederick Hsu
 * Creation date: Fri.  27 March 2020
 * Copyright(C) 2020    All rights reserved.
 *
 **************************************************************************************************/

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "MyPoint.h"
#import "misc.h"

int main(int argc, char* argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    MyPoint *pnt = [[MyPoint alloc] init];
    NSLog(@"pnt's ref_cnt = %d", [pnt retainCount]);

    Circle *circle = [[Circle alloc] init];
    circle.pnt = pnt;
    NSLog(@"pnt's ref_cnt = %d", [pnt retainCount]);

    Circle *c1 = [[Circle alloc] initPoint:pnt andRadius:3];
    NSLog(@"pnt's ref_cnt = %d", [pnt retainCount]);

    [pnt release];
    NSLog(@"pnt's ref_cnt = %d", [pnt retainCount]);

    checkRefCnt();
    unitTestCircle();

    [circle release];
    // [pnt release];
    [c1 release];

    [pool drain];
    return 0;
}