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
#import "NSString_Category.h"

void testCases4_Category(void)
{
    testCase_VerifyHowToCallCategoryMethods();
    testCase4_VerifyExtendSystemBuiltinNSStringClass();
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

void testCase4_VerifyExtendSystemBuiltinNSStringClass(void)
{
    @autoreleasepool
    {
        int count = [NSString numberCountOfString : @"我是上海交通大学2016届研究生，学生编号 ：116033210067"];
        NSLog(@"This unicode string contains %d digits.", count);
        
        NSLog(@"This unicde string \"%@\" contains %d digits.",
              @"我是上海交通大学2016届研究生，学生编号 ：116033210067",
              [@"我是上海交通大学2016届研究生，学生编号 ：116033210067" numberCount]);
    }
}