/* Project      : foundation
 * Description  : Make a good research on the Foundation framework of Objective-C programming.
 * ================================================================================================
 * File name    : main.m
 * Description  : This file implements the main() entry function for current project.
 * Creator      : Frederique Hsu
 * Creation date: Mon.  19 May 2020
 * Copyright(C) 2020    All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import "testing.h"

int main(int argc, char* argv[])
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    execute_test_items();
    
    [pool drain];
    return 0;
}