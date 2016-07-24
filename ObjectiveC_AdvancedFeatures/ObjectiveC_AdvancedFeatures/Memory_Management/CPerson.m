/**************************************************************************************************
 * File nae     : CPerson.m
 * Description  : Implement the class CPerson
 * Creator      : Frederick Hsu
 * Creation date: Sun.  24 JULY, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "CPerson.h"

@implementation CPerson

    -(void)dealloc
    {
        NSLog(@"NOTICE : %@ has already been destroyed!", self);
        [super dealloc];
    }

    -(id)initWithAge : (int)age
    {
        self = [super init];
        if (self != nil)
        {
            _age = age;
        }
        return self;
    }

@end