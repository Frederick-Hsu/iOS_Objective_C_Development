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

#if 0
- (id)initWithName:(NSString*)your_name andEmail:(NSString*)your_email
{
    self = [super init];
    if (self == nil)
        return nil;
    name = your_name;
    email = your_email;
    return self;
}
#endif

- (NSComparisonResult)compareName:(AddressCard*)element
{
    return [name compare:element.name];
}

+ (BOOL)isMailOk:(NSString*)validEmail
{
    return ([validEmail rangeOfString:@"@"].length > 0);
}

- (AddressCard*)initWithName:(NSString*)your_name andEmail:(NSString*)your_email
{
    self = [super init];
    if (self == nil)
        return nil;
    name = your_name;
    email = your_email;
    return self;
}

- (void)dealloc
{
    [name release];
    [email release];
    [super dealloc];
}
@end