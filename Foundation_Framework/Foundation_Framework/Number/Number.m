/**************************************************************************************************
 * File name    : Number.m
 * Description  : Study the NSNumber class of objects and its operations.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  08 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "Number.h"

#import <Foundation/Foundation.h>

void initAndCreateNumberObj(void)
{
    NSNumber *iNum = @28;
    NSLog(@"The integer number object is : %@", iNum);
    
    NSNumber *iMyNum = [NSNumber numberWithInt:50];
    NSLog(@"The initial value of integer number object is : %@", iMyNum);
    
    NSNumber *fNum = [NSNumber numberWithFloat:0.618f];
    NSLog(@"The float number object is : %@", fNum);
    
    NSNumber *dNum = [NSNumber numberWithDouble:256.284];
    NSLog(@"The double number object is : %@", dNum);
    
    NSNumber *bNum = [NSNumber numberWithBool:true];
    NSLog(@"The boolean number object is : %@", bNum);
    
    return;
}

void castTypeForNumberObjects(void)
{
    NSMutableArray *numArray = [NSMutableArray array];
    for (int index = 0; index <= 30; index++)
    {
        [numArray addObject:[NSNumber numberWithInt:index]];
    }
    NSLog(@"The number objects array is : %@", numArray);
    
    /***************************************************************************/
    
    NSNumber *dNum = [NSNumber numberWithDouble:3.1415926535];
    double num_DoubleValue = [dNum doubleValue];
    int num_IntValue = [dNum intValue];
    NSString *num_StrValue = [dNum stringValue];
    
    NSLog(@"Revert to double precision number, the result is : %lf", num_DoubleValue);
    NSLog(@"Revert to integer number, it is  : %d", num_IntValue);
    NSLog(@"Revert to string, it shows : %@", num_StrValue);
    
    return;
}
