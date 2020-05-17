#import "XYPoint.h"

@implementation XYPoint

- (void)setX:(int)xval andY:(int)yval
{
    x = xval;
    y = yval;
}

- (void)print
{
    NSLog(@"x = %d, y = %d", x, y);
}

- (id)copyWithZone:(NSZone*)zone
{
    XYPoint* newPoint = [[XYPoint allocWithZone:zone] init];
    [newPoint setX:x andY:y];
    return newPoint;
}
@end

@implementation ThreeDPoint
- (void)print
{
    NSLog(@"x = %d, y = %d, z = %d", x, y, z);
}

- (void)setX:(int)xval andY:(int)yval andZ:(int)zval
{
    [super setX:xval andY:yval];
    z = zval;
}

- (id)copyWithZone:(NSZone*)zone
{
    ThreeDPoint* new3DPoint = [[[self class] allocWithZone:zone] init];
    [new3DPoint setX:x andY:y andZ:z];
    return new3DPoint;
}
@end

void copyObject(void)
{
    XYPoint* point = [[XYPoint alloc] init];
    [point setX:3 andY:5];

    XYPoint* myPoint = [point copy];
    NSLog(@"myPoint: ");
    [myPoint print];
    NSLog(@"point's retain count = %i", [point retainCount]);
    NSLog(@"myPoint's retain count = %i", [myPoint retainCount]);

    [myPoint setX:-10 andY:-20];
    
    NSLog(@"point: ");
    [point print];
    NSLog(@"myPoint has become to: ");
    [myPoint print];

    [point release];
    [myPoint release];
}