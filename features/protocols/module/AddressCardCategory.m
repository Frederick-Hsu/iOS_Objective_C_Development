#import "AddressCardCategory.h"

@implementation AddressCard (AddressCardCategory)

- (void)uppercaseName
{
    self.name = [name uppercaseString];
}

@end

void testAddressCard(void)
{
    AddressCard* tomCard = [[AddressCard alloc] initWithName:@"Tom" andEmail:@"tom@gmail.com"];
    AddressCard* tomCard_alias = [[AddressCard alloc] initWithName:@"Tom" andEmail:@"tom@gmail.com"];
    AddressCard* jackyCard = [[AddressCard alloc] initWithName:@"Jacky" andEmail:@"jacky@gmail.com"];

    if ([AddressCard isMailOk:tomCard.email] == YES)
    {
        NSLog(@"The %@ is valid email address.", [tomCard email]);
    }
    else
    {
        NSLog(@"The %@ is invalid email address.", [tomCard email]);
    }

    NSComparisonResult compResult = [tomCard compareName:tomCard_alias];
    if (compResult == NSOrderedSame)
    {
        NSLog(@"%@'s name is same as %@'s", tomCard, tomCard_alias);
    }
    else
    {
        NSLog(@"tomCard name:%@ is not equal to tomCard_alias name:%@", tomCard.name, tomCard_alias.name);
    }

    if ([tomCard compareName:jackyCard] != NSOrderedSame)
    {
        NSLog(@"%@'s name is NOT equal to %@'s", tomCard, jackyCard);
    }

    [tomCard release];
    [tomCard_alias release];
    [jackyCard release];
}