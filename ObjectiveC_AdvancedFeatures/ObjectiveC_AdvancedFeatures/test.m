/**************************************************************************************************
 * File nae     : test.m
 * Description  : Implement and perform all the test cases for current project.
 * Creator      : Frederick Hsu
 * Creation date: Sun.  24 JULY, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test.h"
#import "Memory_Management/test_Memory_Management.h"
#import "Category/test_Category.h"

void performProjectTestCases(void)
{
    performTestCases4MemoryManagement();
    performTestCases4Category();
}

void performTestCases4MemoryManagement(void)
{
    testCases4_MemoryManagement();
}

void performTestCases4Category(void)
{
    testCases4_Category();
}

