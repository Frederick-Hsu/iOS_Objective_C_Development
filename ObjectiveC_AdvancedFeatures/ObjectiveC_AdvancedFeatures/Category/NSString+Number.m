/**************************************************************************************************
 * File nae     : NSString+NumberEase.m
 * Description  : Implement the category NumberEase to extend the class NSString.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  04 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "NSString+NumberEase.h"

@implementation NSString(NumberEase)

    -(NSNumber*)lengthAsNumber
    {
        NSUInteger length = [self length];
        NSNumber *num = [NSNumber numberWithUnsignedLong:length];
        return num;
    }

@end