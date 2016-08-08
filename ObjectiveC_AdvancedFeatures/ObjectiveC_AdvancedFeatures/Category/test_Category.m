/**************************************************************************************************
 * File nae     : test_Category.m
 * Description  : Design test cases to verify how to use the category.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  04 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_Category.h"
#import "Person.h"
#import "Person+Wang.h"

void testCases4_Category(void)
{
    testCase_VerifyHowToCallCategoryMethods();
}

void testCase_VerifyHowToCallCategoryMethods(void)
{
    @autoreleasepool
    {
        Person *per = [[Person alloc] init];
        
        [per run];
        
        [per study];
    }
}