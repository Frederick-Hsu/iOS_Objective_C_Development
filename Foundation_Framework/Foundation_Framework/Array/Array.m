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

void dynamicArrayAndOperations(void)
{
    NSObject *obj = [[NSObject alloc] init];
    
    NSMutableArray *myDynamicArray = [NSMutableArray arrayWithCapacity:4];
    [myDynamicArray addObject:@"C"];
    [myDynamicArray addObject:@"C++"];
    [myDynamicArray addObject:obj];
    [myDynamicArray addObject:@".Net"];
    [myDynamicArray addObject:@"Java"];
    [myDynamicArray addObject:@"iOS Objective-C"];
    [myDynamicArray addObject:@"Python"];
    [myDynamicArray addObject:@"JavaScript"];
    
    NSLog(@"These objects are inserted into the mutable array, they are : ");
    for (NSObject *tempObj in myDynamicArray)
    {
        NSLog(@"%@", tempObj);
    }
    
    return;
}

void operationsOnDynamicArray(void)
{
    NSMutableArray *courseDynamicArray = [NSMutableArray arrayWithCapacity:3];
    
    [courseDynamicArray addObject:@"JavaEE"];
    [courseDynamicArray addObject:@"iOS"];
    [courseDynamicArray addObject:@"Android"];
    [courseDynamicArray addObject:@"PHP"];
    [courseDynamicArray addObject:@"MySQL and PostgreSQL"];
    
    NSUInteger courseNum = [courseDynamicArray count];
    NSLog(@"Now we have %lu courses, they are : ", courseNum);
    for(int idx = 0; idx < courseNum; idx++)
    {
        NSLog(@"%@", [courseDynamicArray objectAtIndex:idx]);
    }
    
    /* Remove 1 object by the index */
    [courseDynamicArray removeObjectAtIndex:3];
    NSLog(@"----------Parting lines before and after removed the element----------");
    
    NSLog(@"After removal, currently we have %lu courses, they are : ", [courseDynamicArray count]);
    for (int index = 0; index < [courseDynamicArray count]; index++)
    {
        NSLog(@"%@", [courseDynamicArray objectAtIndex:index]);
    }
    
    /* Insert a new object into the mutable array at the specified position */
    [courseDynamicArray insertObject:@"Linux programming" atIndex:2];
    NSLog(@"----------Parting lines before and after inserted a new element----------");
    
    NSLog(@"After insertion, we have %lu courses, they are : ", [courseDynamicArray count]);
    for (NSObject *iterObj in courseDynamicArray)
    {
        NSLog(@"%@", iterObj);
    }
    
    /* Replace an object in the mutable array at specified position */
    [courseDynamicArray replaceObjectAtIndex:4 withObject:@"Python"];
    NSLog(@"----------Parting lines before and after replacement an existed element----------");
    
    NSLog(@"After the replacement, the course array is : ");
    for (NSObject *obj in courseDynamicArray)
    {
        NSLog(@"%@", obj);
    }
    
    return;
}
