#import "dict_manip.h"

#import <Foundation/Foundation.h>

void manipulate_dictionary(void)
{
    NSDictionary* bookmark = [NSDictionary dictionaryWithObjectsAndKeys:@"url", @"URL", @"favicon", @"FAVICON",
        @"title", @"TITLE", nil];
    NSLog(@"The bookmark is %@", bookmark);
    NSLog(@"All keys of bookmark dictionary are: %@", [bookmark allKeys]);
    NSLog(@"All values of bookmark dict are: %@", [bookmark allValues]);
    [bookmark release];
}

void testDictionary(void)
{
    NSDictionary* dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"Tom", @"Name", 
        [NSNumber numberWithInt:37], @"Age", @"tom@gmail.com", @"Email", nil];
    NSLog(@"This dict is: %@", dict);

    for (id key in dict)
    {
        NSLog(@"{%@ : %@}", key, [dict objectForKey:key]);
    }
    NSLog(@"Keys: %@", [dict allKeys]);
    NSLog(@"Values: %@", [dict allValues]);

    [dict release];

    /*========================================================================================================*/

    NSMutableDictionary* mdict = [NSMutableDictionary dictionaryWithDictionary:dict];
    [mdict setObject:@"Male" forKey:@"Gender"];
    NSLog(@"This mutable dictionary is: %@", mdict);

    [mdict removeObjectForKey:@"Age"];
    NSLog(@"mdict had become to be: %@", mdict);

    // NSLog(@"%@", [mdict keysSortedByValueUsingSelector:@selector(compare:)]);
}