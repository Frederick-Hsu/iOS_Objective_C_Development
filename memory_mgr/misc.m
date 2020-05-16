#import "misc.h"

@implementation A

@end

void checkRefCnt(void)
{
    A* anObject = [[A alloc] init];
    [anObject retain];
    NSLog(@"ref count1 = %d", [anObject retainCount]);

    [anObject release];
    NSLog(@"ref count2 = %d", [anObject retainCount]);

    [anObject release];
    // NSLog(@"ref count3 = %d", [anObject retainCount]);
}