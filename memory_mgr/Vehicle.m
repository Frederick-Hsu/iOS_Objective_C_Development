#import "Vehicle.h"

@implementation Vehicle

+ (id)vehicleWithColor:(NSColor*)color
{
    id newInstance = [[[self class] alloc] init];   /* PERFECT, this class is dynamically identified */
    [newInstance setColor:color];
    return [newInstance autorelease];
}

@end