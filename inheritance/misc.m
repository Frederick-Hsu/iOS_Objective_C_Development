#import "misc.h"

@implementation ClassA
@synthesize x;

- (void)initVar
{
    x = 200;
}
@end

@implementation ClassB

- (void)initVar
{
    x = 200;
    y = 300;
}

- (void)printVar
{
    NSLog(@"x = %i, y = %i", x, y);
}

#if defined (DO_NOT_OVERRIDE_DESC_METHOD)
    - (NSString*)description
    {
        return @"This is ClassB";
    }
#endif
@end