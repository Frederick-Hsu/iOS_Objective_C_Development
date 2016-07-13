/**************************************************************************************************
 * File name    : test_OOP.m
 * Description  : Test the OOP important features in Obective-C
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_OOP.h"
#import "Person.h"

void testOOPImportantFeatures(void)
{
    NSLog(@"\n\n");
    NSLog(@"Now we can test some other important features of OOP in Objective-C.");
    testPerson();
}

void testPerson(void)
{
    Person *p = [[Person alloc] init];
    [p setAge : 10];
    [p test];
}