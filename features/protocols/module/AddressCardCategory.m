#import "AddressCardCategory.h"

@implementation AddressCard (AddressCardCategory)

- (void)uppercaseName
{
    self.name = [name uppercaseString];
}
@end