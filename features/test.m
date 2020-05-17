#import "test.h"
#import "protocols/ClassA.h"
#import "protocols/XYPoint.h"

void execute_test_items(void)
{
    implementProtocolMethods();
    NSLog(@"\n");

    copyObject();
    NSLog(@"\n");
}