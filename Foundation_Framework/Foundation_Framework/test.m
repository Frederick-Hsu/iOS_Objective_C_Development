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
#import "Dictionary/testDictionary.h"
#import "Number/testNumber.h"

void performTestCases(void)
{
    // performTestCases4StringModule();
    // performTestCases4ArrayModule();
    performTestCases4DictionaryModule();
}

void performTestCases4StringModule(void)
{
    testCase4_String();
}

void performTestCases4ArrayModule(void)
{
    testCase4_Array();
}


void performTestCases4DictionaryModule(void)
{
    testCase4_Dictionary();
}

void performTestCase4NumberModule(void)
{
    testCase4_Number();
}
