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

/*START*********************************************************************************************
 * NSString
 */

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
    
    NSString *str1 = @"Welcome to Shanghai Amphenol Airwave", *str2 = @"WELCOME TO Shanghai Amphenol Airwave";
    NSComparisonResult comparisonResult = [str1 caseInsensitiveCompare:str2];
    NSLog(@"String1 \"%@\" comparing with string2 \"%@\" is %s equal in case-insensitive.", str1, str2, (comparisonResult == NSOrderedSame ? "" : "NOT"));
    NSLog(@"They are %s equal in case-sensitive.", ([str1 compare:str2] == NSOrderedSame ? "" : "NOT"));
    
    return;
}

void stringLookup(void)
{
    NSString *phrase = @"Merge pull request #3 from Frederick-Hsu/develop", *tag = @"Hsu", *fragment = @"request";
    
    NSRange tagRange = [phrase rangeOfString:tag];
    NSUInteger tagLocation = tagRange.location;
    NSUInteger tagLength = tagRange.length;
    
    if (tagLocation != NSNotFound)
    {
        NSLog(@"From the phrase \"%@\" looking-up, the tag \"%@\" appears in the location %lu, and its length is %lu", phrase, tag, tagLocation, tagLength);
    }
    else
    {
        NSLog(@"Not found the tag \"%@\".", tag);
    }
    
    NSRange fragmentRange = [phrase rangeOfString:fragment];
    NSUInteger fragmentLocation = fragmentRange.location;
    NSUInteger fragmentLength = fragmentRange.length;
    
    if (fragmentLocation != NSNotFound)
    {
        NSLog(@"the fragment \"%@\" appears in the location : %lu, and its length is : %lu", fragment, fragmentLocation, fragmentLength);
    }
    else
    {
        NSLog(@"fragment \"%@\" not found.", fragment);
    }
}

void cutoutSubstring(void)
{
    NSString *sentence = @"Although it rains, throw not away your watering pot.  纵然天下雨，休把水壶丢。";
    
    /* 从字符串的开头一直截取到指定的位置，但不包括该位置的字符 */
    NSString *substring1 = [sentence substringToIndex:3];
    NSLog(@"The sub-string to index 3 is : %@", substring1);
    
    /* 截取指定位置开始（包括指定位置的字符），并包括之后的全部字符 */
    NSString *substring2 = [sentence substringFromIndex:20];
    NSLog(@"The substring from index 20 is : %@", substring2);
    
    /* 按照所给出的位置和长度，任意地从字符串中截取子串 */
    NSString *substring3 = [sentence substringWithRange:NSMakeRange(9, 15)];
    NSLog(@"The substring within the range(9, 15) is : %@", substring3);
    
    return;
}

/*END***********************************************************************************************
 */


/*START*********************************************************************************************
 * NSMutableString
 */

void operationOnNSMutableString(void)
{
    /* NSMutableString append the string */
    NSMutableString *mStr = [NSMutableString string];
    [mStr appendString:@"Now we start to learn the NSMutableString class, "];
    [mStr appendString:@"and its various operations."];
    [mStr appendFormat:@"Shanghai Jiao Tong University celebrated its %d anniversary in 2016.", 120];
    NSLog(@"The string is : %@", mStr);
    
    /* NSMutableString delete the sub-string */
    NSMutableString *myMutableStr = [NSMutableString stringWithFormat:@"Alice Yu, I love you."];
    NSLog(@"The original string is : %@", myMutableStr);
    [myMutableStr deleteCharactersInRange:[myMutableStr rangeOfString:@"Alice Yu,"]];
    NSLog(@"After removed an fragement, now the string is : %@", myMutableStr);
    
    /* NSMutableString insert a string fragment */
    NSMutableString *Str = [NSMutableString stringWithFormat:@"北京欢迎您"];
    [Str insertString:@"传智播客" atIndex:2];
    NSLog(@"Current string is : %@", Str);
    
    /* NSMutableString replace a sub-string fragment */
    NSMutableString *myStr = [NSMutableString string];
    myStr.string = @"北京欢迎您";
    [myStr replaceCharactersInRange:[myStr rangeOfString:@"北京"] withString:@"传智播客"];
    NSLog(@"After replacement, the new string is : %@", myStr);
    
    return;
}

/*END***********************************************************************************************
 */
