#import "MyPoint.h"

@implementation MyPoint
@synthesize x, y;

- (void)print
{
    NSLog(@"Point(%d, %d)", x, y);
}

- (id)initWithX:(int)xval andY:(int)yval
{
    self = [super init];
    if (self == nil)
        return nil;
    x = xval;
    y = yval;
    return self;
}
@end