#import "ClassA.h"

@implementation ClassA
@synthesize x;

- (id)initWithX:(int)xval
{
    self = [super init];
    if (self == nil)
        return nil;
    x = xval;
    return self;
}

- (void)initVar:(int)xval
{
    x = xval;
}

- (void)print
{
    NSLog(@"x = %d", x);   
}

@end

void implementProtocolMethods(void)
{
    ClassA* aobj = [[ClassA alloc] init];
    [aobj initVar:1024];
    [aobj print];

    [aobj release];
}