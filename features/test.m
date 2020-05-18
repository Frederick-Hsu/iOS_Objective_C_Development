#import "test.h"
#import "protocols/ClassA.h"
#import "protocols/XYPoint.h"
#import "categories/NewPoint.h"
#import "fnct_pointer/PT.h"

#import "protocols/module/AddressCardCategory.h"
#import "exceptions/exceptions.h"

void execute_test_items(void)
{
    implementProtocolMethods();
    NSLog(@"\n");

    copyObject();
    NSLog(@"\n");

    extendClassMethods();
    NSLog(@"\n");

    utilizeFnctPointer();
    NSLog(@"\n");

    tryCatchExceptions();
    NSLog(@"\n");
}

void testSelector(void)
{
    SEL msg = @selector(compareName:);
    AddressCard* tomCard = [[AddressCard alloc] initWithName:@"Tom" andEmail:@"tom@gmail.com"];
    AddressCard* tomCard_alias = [[AddressCard alloc] initWithName:@"Tom" andEmail:@"tom@gmail.com"];
    AddressCard* jackyCard = [[AddressCard alloc] initWithName:@"Jacky" andEmail:@"jacky@gmail.com"];

    /* Using performSelector method of NSObject */
    if ([tomCard performSelector:msg withObject:tomCard_alias] == YES)
    {
        NSLog(@"tomCard and tomCard_alias are same");
    }
    if ([tomCard performSelector:msg withObject:jackyCard] == NO)
    {
        NSLog(@"tomCard and jackyCard are different.");
    }

    [tomCard release];
    [tomCard_alias release];
    [jackyCard release];
}