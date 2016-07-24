/**************************************************************************************************
 * File name    : test_method.m
 * Description  : Test and verify the method functions in the class.
 * Creator      : Frederick Hsu
 * Creation date: Sat.  23 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_method.h"
#import "Phone.h"
#import "CPerson.h"

void testCases4VerifyClassMethods(void)
{
    test_init_method();
    test_customized_init_method();
    test_customized_description_method();
}

void test_init_method(void)
{
    Phone *ph1 = [[Phone alloc] init];
    NSLog(@"The price of phone 1 is %f", ph1.price);
    
    Phone *ph2 = [[Phone alloc] init];
    NSLog(@"The price of phone 2 is %f", ph2.price);
}

void test_customized_init_method(void)
{
    CPerson *cp1 = [[CPerson alloc] initWithName:@"Alex" :25];
    NSLog(@"The age of %@ is %d.", cp1.name, cp1.age);
    
    CPerson *cp2 = [[CPerson alloc] initWithName:@"David" :33];
    NSLog(@"The age of %@ is %d.", cp2.name, cp2.age);
    return;
}

void test_customized_description_method(void)
{
    CPerson *cp = [[CPerson alloc] init];
    cp.age = 33;
    cp.name = @"Frederick Hsu";
    NSLog(@"%@", cp);
}