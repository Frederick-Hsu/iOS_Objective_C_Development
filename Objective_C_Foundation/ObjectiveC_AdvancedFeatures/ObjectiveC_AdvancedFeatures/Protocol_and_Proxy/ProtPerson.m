/**************************************************************************************************
 * File name    : Person.m
 * Description  : Define a class "Person", which should abide by the protocol "MyProtocol".
 * Creator      : Frederick Hsu
 * Creation date: Wed.  07 Sep. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "ProtPerson.h"

@implementation ProtPerson

    -(void)eat
    {
        NSLog(@"eating...");
    }

    -(void)run
    {
        NSLog(@"running...");
    }

@end