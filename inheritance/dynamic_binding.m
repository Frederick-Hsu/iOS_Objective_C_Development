#import "dynamic_binding.h"

@implementation Base
- (void)print
{
    NSLog(@"In Base class, this is %@", self);
}

- (void)initWithX:(int)xval
{
    x = xval;
}

- (void)printMembers
{
    NSLog(@"member x = %d", x);
}
@end

@implementation Derived
- (void)print
{
    NSLog(@"In Derived class, this is %@", self);
}

- (void)initWithX:(int)xval andY:(int)yval
{
    [super initWithX:xval];
    y = yval;
}

- (void)printMembers
{
    NSLog(@"member x = %d, y = %d", x, y);
}
@end

void downCast(void)
{
    Base* obj = [[Derived alloc] init];     // obj points to Derived 
    [obj print];

    [(Derived*)obj print];  // Down-cast from Base to Derived
    [obj release];
}

void convertID(void)
{
    Base* bobj = [[Base alloc] init];
    Derived* dobj = [[Derived alloc] init];

    id idobj = bobj;
    [idobj initWithX:32];
    [idobj printMembers];

    idobj = dobj;
    [idobj initWithX:56 andY:404];
    [idobj printMembers];

    [bobj release];
    [dobj release];
}