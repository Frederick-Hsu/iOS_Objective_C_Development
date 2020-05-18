#import "array_manip.h"

#import <Foundation/Foundation.h>

void manip_array_container(void)
{
    NSArray* monthNames = [NSArray arrayWithObjects:@"January", @"Febrary", @"March",
        @"April", @"May", @"June",
        @"July", @"August", @"September",
        @"October", @"November", @"December", nil];
    #if 1
    for (int index = 0; index < [monthNames count]; ++index)
    {
        NSLog(@"%@", [monthNames objectAtIndex:index]);
    }
    #endif
    NSLog(@"July at the index %d", [monthNames indexOfObject:@"July"] + 1);
}