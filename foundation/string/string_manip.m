#import "string_manip.h"

#import <Foundation/Foundation.h>

void testMutableString(void)
{
    NSString* love = @"Lily, I love you so much!";
    NSMutableString* mstr = [[NSMutableString stringWithString:love] autorelease];
    [mstr appendString:@"I want to make love with you."];
    [mstr insertString:@"\t" atIndex:[love length]];
    NSLog(@"%@", mstr);

    [mstr replaceCharactersInRange:NSMakeRange(0, 4) withString:
        #if 0 
            @"Alice Yu" 
        #else 
            @"余学琴" 
        #endif
    ];
    NSLog(@"%@", mstr);

    [mstr replaceOccurrencesOfString:@"make" 
                          withString:@"FUCK" 
                             options:NSCaseInsensitiveSearch 
                               range:NSMakeRange(0, [mstr length])];
    NSLog(@"%@", mstr);
}