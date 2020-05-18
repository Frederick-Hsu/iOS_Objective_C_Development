#import "testing.h"
#import "basic.h"
#import "string/string_manip.h"
#import "collections/array_manip.h"

#import <Foundation/Foundation.h>

void execute_test_items(void)
{
    testNumber();
    NSLog(@"\n");

    testString();
    NSLog(@"\n");

    testRange();
    NSLog(@"\n");

    testMutableString();
    NSLog(@"\n");

    manip_array_container();
    NSLog(@"\n");
}