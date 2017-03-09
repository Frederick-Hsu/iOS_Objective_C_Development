/**************************************************************************************************
 * File nae     : Person+Wang.m
 * Description  : Implement the category Wang to extend the class Person.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  04 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Person+Wang.h"

@implementation Person (Wang)

    -(void)study
    {
        NSLog(@"I am studying...");
    }

    -(void)run
    {
        NSLog(@"This is the run() method of category Wang");
    }

@end