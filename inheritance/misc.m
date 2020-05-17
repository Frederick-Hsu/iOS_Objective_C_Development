#import "misc.h"

@implementation ClassA
@synthesize x;

- (void)initVar
{
    x = 200;
}

- (void)initVar:(int)xval
{
    x = xval;
}

- (void)printVar
{
    NSLog(@"x = %i", x);
}

- (id)initVarX:(int)xval
{
    self = [super init];
    if (self == nil)
        return nil;
    x = xval;
    return self;
}
@end

@implementation ClassB

- (void)initVar
{
    [super initVar];
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

- (id)initVarX:(int)xval andY:(int)yval
{
    #if 0
        self = [super init];
        if (self == nil)
            return nil;
        [super initVar:xval];
    #else
        self = [super initVarX:xval];
        if (self == nil)
            return nil;
    #endif
    y = yval;
    return self;
}
@end