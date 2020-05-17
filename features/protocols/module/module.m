#import "module.h"
#import "AddressCard.h"
#import "AddressCardCategory.h"

void implementAddressCardModule(void)
{
    AddressCard* card = [[AddressCard alloc] initWithCoder:[[NSCoder alloc] init]];

    /* Using NSCoding protocol: write to file */
    [NSKeyedArchiver archiveRootObject:card toFile:@"./AddressCard.txt"];

    /* Using NSCoding protocol: read from file */
    AddressCard* myCard = [NSKeyedUnarchiver unarchiveObjectWithFile:@"./AddressCard.txt"];
    NSLog(@"my address card is: %@", myCard);

    /* Using category */
    [myCard uppercaseName];
    NSLog(@"Now my address card had changed to: %@", myCard);

    [card release];
    [myCard release];
}