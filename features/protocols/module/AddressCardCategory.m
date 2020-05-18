#import "AddressCardCategory.h"

@implementation AddressCard (AddressCardCategory)

- (void)uppercaseName
{
    self.name = [name uppercaseString];
}

- (BOOL)compareName:(AddressCard*)anotherCard
{
    if (name == anotherCard.name)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}
@end