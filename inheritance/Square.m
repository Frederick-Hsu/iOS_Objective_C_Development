#import "Square.h"

@implementation Square

- (void)setLength:(int)len
{
    [self setWidth:len andHeight:len];
}

- (int)length
{
    return self.width;
}

- (id)initWithLength:(int)length
{
    self = [super initWithWidth:length andHeight:length];
    if (self)
        return nil;
    return self;
}
@end