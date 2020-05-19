#import "array_manip.h"

@implementation Compare
@end

void manip_array_container(void)
{
    NSArray* monthNames = [NSArray arrayWithObjects:@"January", @"Febrary", @"March",
        @"April", @"May", @"June",
        @"July", @"August", @"September",
        @"October", @"November", @"December", nil];
    for (int index = 0; index < [monthNames count]; ++index)
    {
        NSLog(@"%@", [monthNames objectAtIndex:index]);
    }
    NSLog(@"July at the index %d", [monthNames indexOfObject:@"July"] + 1);
    NSLog(@"%d", [monthNames indexOfObject:@"Tom"]);
#if 0
    /* Sort the NSArray */
    [monthNames sortedArrayUsingSelector:@selector(compareMethod:)];
#endif
    [monthNames release];

    /* NSArray cannot hold int value, but any objects */
    NSArray* numberArray = [[NSArray arrayWithObjects:[NSNumber numberWithInt:56],
        [NSNumber numberWithLong:0xF5E89D0A], [NSNumber numberWithDouble:3.1415926], @"INFINITE", nil] autorelease];
    NSLog(@"The numberArray is %@", numberArray);
}

void manip_mutable_array_container(void)
{
    NSMutableArray* monthNames = [NSMutableArray arrayWithCapacity:12];
    [monthNames addObject:@"Febrary"];
    [monthNames insertObject:@"January" atIndex:0];

    id anObject = [[monthNames objectAtIndex:1] retain];
    [monthNames removeObjectAtIndex:1];

    [monthNames addObject:@"March"];

    NSMutableArray* weekMArray = [NSMutableArray arrayWithObjects:@"Mon", @"Tue", @"Wed", @"Thur", @"Fri", @"Sat", @"Sun", nil];
    [monthNames addObjectsFromArray: weekMArray];
    NSLog(@"%@", monthNames);

    [anObject release];
    [monthNames release];
}

void fast_enumeration(void)
{
    NSArray* array = [NSArray arrayWithObjects:@"one", @"two", @"three", @"four", @"five", nil];
    for (id object in array)
    {
        NSLog(@"%@", object);
    }

    // [array sortUsingSelecttor:@selector(compareMethod:)];
    [array release];
}

void test_arrays_copy(void)
{
    id object;
    NSMutableArray* newArray = [[NSMutableArray alloc] init];
    NSArray* alphabets = [NSArray arrayWithObjects:@"a", @"b", @"c", @"d", @"e", @"f", @"g", nil];
    NSLog(@"The alphabets are: %@", alphabets);

#if 0
    for (int i = 0; i < [alphabets count]; ++i)
    {
        object = [[alphabets objectAtIndex:i] copy];
        [newArray addObject:object];
        [object release];
    }
#else
    // NSEnumerator* enumerator = [alphabets objectEnumerator];
    NSEnumerator* enumerator = [alphabets reverseObjectEnumerator];
    while ((object = [enumerator nextObject]) != nil)
    {
        [newArray addObject:object];
    }
#endif
    NSLog(@"The new array is: %@", newArray);

    [newArray release];
}

void split_array(void)
{
    NSString* number_string = [[NSString alloc] initWithString:@"One, Two, Three, Four, Five, Six"];
    NSLog(@"The number_string is: %@", number_string);

    NSArray* number_array = [number_string componentsSeparatedByString:@", "];
    NSLog(@"The number_array is: %@", number_array);

    [number_string release];
}

void join_array(void)
{
    NSArray* number_array = [[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", @"Four", @"Five", nil];
    NSString* number_string = [number_array componentsJoinedByString:@", "];
    NSLog(@"The number string is: %@", number_string);
}