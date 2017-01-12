/**************************************************************************************************
 * File name    : testString.m
 * Description  : Design test cases to verify the String module.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  28 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#import "testString.h"

#import "String.h"
#import <Foundation/Foundation.h>

void testCase4_String(void)
{
    NSLog(@"Verify the NSString initialization : ");
    initializeString();
    
    NSLog(@"Verify the transferring between C type of string and Objective-C type of string : ");
    transferStringBetween_C_and_ObjectiveC();
    
    NSLog(@"List some basic operations for string :");
    stringBasicOps();
    
    NSLog(@"Judge and compare 2 strings : ");
    judgeAndCompareString();
    
    NSLog(@"Lookup the sub-string : ");
    stringLookup();
    
    NSLog(@"Cut out the sub-string from a string : ");
    cutoutSubstring();
}
