/**************************************************************************************************
 * Project      : HelloWorld
 * Description  : From this "HelloWorld" project, I start to learn the Objective-C programming 
 *              : in Ubuntu Linux platform, with the GCC toolchain environment.
 * ================================================================================================
 * File name    : HelloWorld.m
 * Description  : Write my first Objective-C program.
 * Creator      : Frederique Hsu
 * Creation date: Wed.  25 March 2020
 * Copyright(C) 2020    All rights reserved.
 *
 **************************************************************************************************/

#import <Foundation/Foundation.h>

int main(int argc, char* argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    NSLog(@"Hello, welcome to the Objective-C programming world.");
    [pool drain];
    return 0;
}