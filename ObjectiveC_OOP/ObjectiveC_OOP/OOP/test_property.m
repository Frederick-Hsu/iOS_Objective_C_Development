/**************************************************************************************************
 * File name    : test_property.m
 * Description  : Perform the testing to validate the property of Objective-C programming.
 * Creator      : Frederick Hsu
 * Creation date: Fri.  22 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_property.h"
#import "CStudent.h"

void testcase4verifyProperty(void)
{
    CStudent *stu = [[CStudent alloc] init];
    [stu setAge:20];
    int iAge = [stu age];
    NSLog(@"The age of this student is %d", iAge);
}