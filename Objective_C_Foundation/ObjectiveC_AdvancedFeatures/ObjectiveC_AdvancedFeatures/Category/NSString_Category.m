/**************************************************************************************************
 * File nae     : NSString_Category.h
 * Description  : Implement the category NumberEase to extend the class NSString.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  04 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "NSString_Category.h"

@implementation NSString (NumberEase)

    -(NSNumber*)lengthAsNumber
    {
        NSUInteger length = [self length];
        NSNumber *num = [NSNumber numberWithUnsignedLong:length];
        return num;
    }

@end


@implementation NSString (Number)

    +(int)numberCountOfString : (NSString *)str
    {
        int count = 0;
        for (int i = 0; i < str.length; i++)
        {
            unichar uchar = [str characterAtIndex : i];
            if ((uchar >= '0') && (uchar <= '9'))
            {
                count++;
            }
        }
        return count;
    }

    -(int)numberCount
    {
        int count = 0;
        for (int i = 0; i < self.length; i++)
        {
            unichar uchar = [self characterAtIndex : i];
            if ((uchar >= '0') && (uchar <= '9'))
            {
                count++;
            }
        }
        return count;
    }

@end