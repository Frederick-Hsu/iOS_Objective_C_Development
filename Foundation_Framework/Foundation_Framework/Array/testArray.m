/**************************************************************************************************
 * File name    : testArray.m
 * Description  : Design test cases to perform the testing for NSArray objects' operations.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  01 Feb. 2017
 * COpyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "testArray.h"
#import "Array.h"

#import <Foundation/Foundation.h>

void testCase4_Array(void)
{
    NSLog(@"\n\n");
    NSLog(@"Verify how to create the the array consisted of NSArray objects.");
    createArray();
    
    NSLog(@"\n\n");
    NSLog(@"Verify the mutable array of various kinds of objects :");
    dynamicArrayAndOperations();
    
    NSLog(@"\n\n");
    NSLog(@"and its operations : ");
    operationsOnDynamicArray();
}
