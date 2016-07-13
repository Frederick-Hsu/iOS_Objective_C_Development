/**************************************************************************************************
 * File name    : Cat.m
 * Description  : Implement the class of Cat.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Cat.h"

@implementation Cat

    -(void)print
    {
        NSLog(@"This is a cat.");
        NSLog(@"I am %d years old now.", age);
    }

    -(void)shout
    {
        NSLog(@"The cat had shouted its distinctive sound.");
    }

@end