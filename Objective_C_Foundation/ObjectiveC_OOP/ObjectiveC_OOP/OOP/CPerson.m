/**************************************************************************************************
 * File name    : CPerson.m
 * Description  : Implement the class CPerson
 * Creator      : Frederick Hsu
 * Creation date: Sat.  23 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "CPerson.h"

@implementation CPerson

    -(id)initWithName : (NSString *)name : (int)age
    {
        self = [super init];
        if (nil != self)
        {
            self.name = name;
            self.age = age;
        }
        return self;
    }

    -(NSString *)description
    {
        return [NSString stringWithFormat:@"Name = %@, age = %d", _name, _age];
    }

@end