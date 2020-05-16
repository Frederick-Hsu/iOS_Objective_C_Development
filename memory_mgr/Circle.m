#import "Circle.h"

@implementation Circle

@synthesize pnt;

- (id)initPoint:(MyPoint*)_p andRadius:(int)_r
{
    if (_r < 0)
    {
        radius = 1;
    }
    if (_p == nil)
    {
        [self release];
        return nil;
    }
    if (!(self = [super init]))
    {
        return nil;
    }
    #if 1
        if (pnt)
        {
            [pnt release];
        }
        pnt = [[MyPoint alloc] init];
        [pnt setX:_p.x andY:_p.y];
    #else
        [_p retain];
        pnt = _p;
    #endif
    radius = _r;
    return self;
}

- (void)dealloc
{
    if (pnt)
    {
        [pnt release];
    }
    [super dealloc];
}

@end

void unitTestCircle(void)
{
    MyPoint* point = [[MyPoint alloc] init];
    NSLog(@"point's retain count = %d", [point retainCount]);

    Circle* circle = [[Circle alloc] init];
    circle.pnt = point;
    NSLog(@"point's retain count = %d", [point retainCount]);

    Circle* c1 = [[Circle alloc] initPoint:point andRadius:3];
    NSLog(@"point's retain count = %d", [point retainCount]);

    [point release];
    NSLog(@"point's retain count = %d", [point retainCount]);

    [circle release];
    // NSLog(@"point's retain count = %d", [point retainCount]);   /* point had been released */

    [c1 release];
    // NSLog(@"point's retain count = %d", [point retainCount]);
}