/**************************************************************************************************
 * File name    : Dog.m
 * Description  : Implement the class of Dog.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#import "Dog.h"

@implementation Dog

    -(void)print
    {
        NSLog(@"This is a dog.");
        NSLog(@"I am %d years old now.", age);
    }

    -(void)shout
    {
        [super shout];      // super指向父类
        NSLog(@"The dog had shouted its distinctive sound.");
    }

    -(void)bark
    {
        NSLog(@"The dog is barking now.");
    }

    -(void)run
    {
        [self bark];
        NSLog(@"The dog is running as well.");
    }

@end