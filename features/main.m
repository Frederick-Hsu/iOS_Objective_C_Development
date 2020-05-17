/* Project      : features
 * Description  : To learn some more new features of Objective-C.
 * ================================================================================================
 * File name    : main.m
 * Description  : This file implements the main() entry function for current project.
 * Creator      : Frederique Hsu
 * Creation date: Mon.  18 May 2020
 * Copyright(C) 2020    All rights reserved.
 *
 */

#import <Foundation/Foundation.h>

#import "test.h"

int main(int argc, char* argv[])
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    execute_test_items();
    
    [pool drain];
    return 0;
}