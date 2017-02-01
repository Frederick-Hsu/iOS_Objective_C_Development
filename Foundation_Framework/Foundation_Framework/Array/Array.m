/**************************************************************************************************
 * File name    : Array.m
 * Description  : Study the NSArray class and its methods usage.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  01 Feb. 2017
 * Copyright(C) 2017    All right reserved.
 *
 **************************************************************************************************/

#import "Array.h"
#import <Foundation/Foundation.h>

void createArray(void)
{
    /* 快速创建方式 */
    NSArray *myArray = @[@"Jack", @"Dawe", @"Frederick"];
    
    /* 创建一个空数组 */
    NSArray *emptyArray = [NSArray array];
    
    /* 创建有多个元素对象的数组 */
    NSArray *arrayWithMultiObjs = [NSArray arrayWithObjects:@"Jack", @"Rose", @"Antoinette", @"Donald J. Trump", @"Barake Obama", @"Henry", @"Hillary Clinton", @"Thomas_Muller", nil];
    
    /* 创建只有一个对象的数组 */
    NSArray *arrayWithSoleObjs = [NSArray arrayWithObject:@"Peter"];
    
    NSUInteger elemCount = [arrayWithMultiObjs count];
    
    NSLog(@"myArray is : %@", myArray);
    NSLog(@"emptyArray is : %@", emptyArray);
    NSLog(@"arrayWithMultiObjs is : %@", arrayWithMultiObjs);
    NSLog(@"arrayWithSoleObjs is : %@", arrayWithSoleObjs);
    
    NSLog(@"The count of elements in this array 'arrayWithMultiObjs' is : %lu. They are : ", elemCount);
    for (int index = 0; index < elemCount; index++)
    {
        NSLog(@"%@", [arrayWithMultiObjs objectAtIndex:index]);
    }
    
    return;
}
