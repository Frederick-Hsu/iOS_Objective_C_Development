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
#import "Protocol_and_Proxy/test_Protocol.h"
#import "Protocol_and_Proxy/test_Delegate.h"

void performProjectTestCases(void)
{
    performTestCases4MemoryManagement();
    performTestCases4Category();
    performTestCase4Protocol();
    performTestCase4Delegate();
}

void performTestCases4MemoryManagement(void)
{
    testCases4_MemoryManagement();
}

void performTestCases4Category(void)
{
    testCases4_Category();
}

void performTestCase4Protocol(void)
{
    testCases4_Protocol_Proxy();
}

void performTestCase4Delegate(void)
{
    testCase4_VerifyDelegateMechanism();
}
