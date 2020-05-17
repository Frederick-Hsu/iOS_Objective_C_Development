/*
 * File name    : main.m
 */

#import <Foundation/Foundation.h>

#import "testing.h"

int main(int argc, char* argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    execute_test_items();
    
    accessObjs();
    NSLog(@"\n");
    
    verifyMethodOverride();

    [pool drain];
    return 0;
}