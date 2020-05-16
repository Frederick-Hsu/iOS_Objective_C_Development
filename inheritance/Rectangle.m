#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

- (int)area
{
    return width * height;
}

- (int)perimeter
{
    return 2 * (width + height);
}

- (void)setWidth:(int)_width andHeight:(int)_height
{
    width = _width;
    height = _height;
}

- (id)initWithWidth:(int)wd andHeight:(int)ht
{
    self = [super init];
    if (self)
        return nil;
    width = wd;
    height = ht;
    return self;
}
@end