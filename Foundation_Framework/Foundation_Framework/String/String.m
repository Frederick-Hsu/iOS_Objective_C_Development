/**************************************************************************************************
 * File name    : String.m
 * Description  : Study the NSString and NSMutableString 2 classes.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  28 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#import "String.h"

#import <Foundation/Foundation.h>

void initializeString(void)
{
    int year = 10;
    NSString *s0 = @"Welcome to Shanghai Amphenol Airwave.";
    NSString *s1 = [NSString string];
    
    NSString *s2 = [[NSString alloc] initWithFormat:@"SAA has %d years of history.", year];
    NSString *s3 = [NSString stringWithFormat:@"SAA has %d years of history.", year];
    
    NSLog(@"s0 : %@", s0);
    NSLog(@"s1 : %@", s1);
    NSLog(@"s2 : %@", s2);
    NSLog(@"s3 : %@", s3);
     
    return;
}

void transferStringBetween_C_and_ObjectiveC(void)
{
    NSString *s1 = [[NSString alloc] initWithUTF8String:"Frederick"];   // C字符串 --> Objective-C字符串
    NSLog(@"s1 = %@", s1);
    
    const char *cs = [s1 UTF8String];   // Objective-C字符串 --> C字符串
    NSLog(@"cs = %s", cs);
}

void stringBasicOps(void)
{
    NSString *str = @"How to program the Objective-C code?";
    NSUInteger strCount = [str length];
    
    NSLog(@"The raw string is : %@", str);
    NSLog(@"The length of this string \"%@\" is : %lu", str, strCount);
    
    for (int index = 0; index < strCount; index++)
    {
        char currentChar = [str characterAtIndex:index];
        NSLog(@"The character in position %d is : %c", index, currentChar);
    }
    
    NSLog(@"Transform to upper case : %@", [str uppercaseString]);
    NSLog(@"Transform to lower case : %@", [str lowercaseString]);
    NSLog(@"Captilized the first character of every word : %@", [str capitalizedString]);
    
    return;
}


void judgeAndCompareString(void)
{
    NSString *JTU_Shanghai  = @"Shanghai Jiao Tong University",
             *JTU_Taiwan    = @"National Chiao Tung University",
             *JTU_Beijing   = @"Beijing Jiao Tong University",
             *JTU_Southwest = @"Southwest Jiao Tong University",
             *JTU_Xian      = @"Xi'an Jiao Tong University";
    NSString *University    = @"University";
    
    /* 比较字符串完全相等比较 */
    BOOL result1 = [JTU_Shanghai isEqualToString:JTU_Taiwan];
    NSLog(@"The raw string \"%@\", comparing with \"%@\", they are %s equal.", JTU_Shanghai, JTU_Taiwan, (result1 ? "" : "NOT"));
    
    /* 判断一个字符串是否以另一个字符串开头 */
    BOOL result2 = [JTU_Beijing hasPrefix:JTU_Xian];
    NSLog(@"The string \"%@\" have %s the same prefix with the string \"%@\".", JTU_Beijing, (result2 ? "" : "NO"), JTU_Xian);
    
    /* 判断一个字符串是否以另一个字符串结尾 */
    BOOL result3 = [JTU_Southwest hasSuffix:University];
    NSLog(@"The string \"%@\" have %s the same suffix with the string \"%@\".", JTU_Southwest, (result3 ? "" : "NO"), University);
    
    return;
}
