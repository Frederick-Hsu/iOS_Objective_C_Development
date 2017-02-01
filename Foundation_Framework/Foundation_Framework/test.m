/**************************************************************************************************
 * File name    : test.m
 * Description  : Perform the test cases here.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  28 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#import "test.h"

#import "String/testString.h"
#import "Array/testArray.h"

void performTestCases(void)
{
    // performTestCases4StringModule();
    performTestCases4ArrayModule();
}

void performTestCases4StringModule(void)
{
    testCase4_String();
}

void performTestCases4ArrayModule(void)
{
    testCase4_Array();
}
