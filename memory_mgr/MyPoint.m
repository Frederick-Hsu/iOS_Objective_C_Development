#import "MyPoint.h"

@implementation MyPoint

@synthesize x, y;

- (void)setX:(int)_x andY:(int)_y
{
    x = _x;
    y = _y;
}

@end