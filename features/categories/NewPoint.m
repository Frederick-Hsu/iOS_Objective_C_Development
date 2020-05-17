#import "NewPoint.h"

@implementation MyPoint (MyPointExtension)

- (void)moveTo:(int)xcorr :(int)ycorr
{
    x = xcorr;
    y = ycorr;
}

- (void)print
{
    NSLog(@"move to new Point(%d, %d)", x, y);
}
@end

void extendClassMethods(void)
{
    MyPoint* point = [[MyPoint alloc] initWithX:3 andY:4];
    [point print];

    [point moveTo:15 :80];
    [point print];

    [point release];
}