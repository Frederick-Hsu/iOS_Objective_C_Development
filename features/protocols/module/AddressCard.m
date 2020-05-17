#import "AddressCard.h"

@implementation AddressCard
@synthesize name, email;

- (void)encodeWithCoder:(NSCoder*)aCoder
{
    [aCoder encodeObject:name forKey:@"name"];
    [aCoder encodeObject:email forKey:@"email"];
}

- (id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super init];
    if (self)
    {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
    }
    return self;
}
@end