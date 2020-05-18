#import "basic.h"
#import <Foundation/Foundation.h>


void primitive(void)
{
    NSNumber* intnum = [[NSNumber alloc] initWithInt:100];
    NSNumber* number = [NSNumber numberWithInteger:205];

    NSInteger myInt = [intnum integerValue];
    
    [intnum release];
    [number release];
}

void testNumber(void)
{
    NSNumber* num = [NSNumber numberWithInt: 136];
    NSInteger myInt = [num integerValue];
    NSLog(@"myInt = %d", myInt);

    NSNumber* piobj = [[NSNumber alloc] initWithDouble:3.1415926];
    NSLog(@"%@", piobj);
    NSLog(@"int: %i", [piobj integerValue]);
    NSLog(@"long: %ld", [piobj longValue]);
    NSLog(@"double: %f", [piobj doubleValue]);
    // NSLog(@"char: %c", [piobj charValue]);

    #if 0
    if ([num isEqualToNumber:myInt])
    {
        NSLog(@"%@ is not equal to %@", num, myInt);
    }
    #else
    switch ([num compare:piobj])
    {
    case NSOrderedSame:
        NSLog(@"%@ = %@", num, piobj);
        break;
    case NSOrderedDescending:
        NSLog(@"%@ > %@", num, piobj);
        break;
    case NSOrderedAscending:
        NSLog(@"%@ < %@", num, piobj);
        break;
    default:
        break;
    }
    #endif

    // [num release];
    [piobj release];
}

void testString(void)
{
    NSString* str = @"Hello, Objective-C programming world!";
    NSLog(@"the string is : %@", str);

    NSString* emptystr = [[NSString alloc] init];
    NSString* dest_str = [NSString stringWithString:str];
    NSLog(@"The destination string is: %@", dest_str);

    NSString* assigned_str = str;
    NSString* appended_str = [str stringByAppendingString:@" Welcome to learn Objective-C."];
    NSLog(@"%@", appended_str);
    NSLog(@"%@", [appended_str uppercaseString]);
    NSLog(@"The front section: %@", [appended_str substringToIndex:10]);
    NSLog(@"The back section: %@",  [appended_str substringFromIndex:6]);

    NSString* now = [NSString stringWithFormat:@"Now is %@", [NSDate date]];
    NSLog(@"%@", now);

    NSString* autoStr = [[[NSString alloc] initWithString:@"I love you so much, Lily Luo."] autorelease];
    NSLog(@"%@ = %@", [autoStr class], [autoStr description]);
    const char* chars = [autoStr UTF8String];
    NSLog(@"The string in C-style is: %s", chars);
}

void testRange(void)
{
    NSString* str = @"This is quite a long string.";
    NSString* substr = [str substringWithRange:NSMakeRange(8, 10)];
    NSLog(@"%@", substr);

    NSRange subRange = [str rangeOfString:@"quite"];
    if (subRange.location == NSNotFound)
    {
        NSLog(@"Not find the sub range from \"%@\" for the substring \"%@\"", str, @"quite");
    }
    NSLog(@"subRange.location = %d, subRange.length = %d", subRange.location, subRange.length);

#if 0   /* Failed to write string into a file */
    /* write the string into a file */
    NSString* path = @"./string.txt";
    [str writeToFile:path automatically:YES encoding:NSASCIIStringEncoding error:nil];
    [path release];
#endif
    [str release];
}