/**************************************************************************************************
 * File name    : testcase_read_write_plist.m
 * Description  : Design test cases for reading the plist file.
 * Creator      : Frederick Hsu
 * Creation date: Sat.  11 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "testcase_read_write_plist.h"
#import "read_write_plist.h"

#import <Foundation/Foundation.h>

void testCase4_Read_plist(void)
{
    NSLog(@"Study how to read the plist file in Objective-C programming : ");
    readPropertyListFileWithMutableDict();
}

void testCase4_Write_plist(void)
{
    NSLog(@"Study how to write the plist file in Objective-C programming : ");
    writePropertyListFileOverMutableDict();
    
    writePropertyListFileOverStringOrArrayDict();
}
