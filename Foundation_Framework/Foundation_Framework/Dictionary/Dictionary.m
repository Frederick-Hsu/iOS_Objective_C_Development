/**************************************************************************************************
 * File name    : Dictionary.m
 * Description  : Study the NSDictionary and NSMutableDictionary key-value type.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  01 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "Dictionary.h"

#import <Foundation/Foundation.h>

void initializeCreateDict(void)
{
    /* 直接初始化一个字典对象 */
    NSDictionary *dict = @{@"Name" : @"Frederick Hsu", @"Age" : @"34", @"Gender" : @"Male"};
    NSLog(@"%@", dict);
    
    /* 创建一个没有键值对的字典 */
    NSDictionary *emptyDict = [NSDictionary dictionary];
    
    /* 创建只有一个键值对的字典 */
    NSDictionary *soleKeyValuePairDict = [NSDictionary dictionaryWithObject:@"Zhangshan" forKey:@"Name"];
    
    /* 通过具体的键值对创建字典 */
    NSDictionary *specificKeyValuePairDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Lily Lee", @"Name", @"Jimei Universiity", @"College", @"Female", @"Gender", nil];
    
    /* 将数组作为参数创建字典 */
    NSDictionary *arrayDict = [NSDictionary dictionaryWithObjects:@[@"Gavin Sun", @"Male", @"36"] forKeys:@[@"Name", @"Gender", @"Age"]];
    
    NSLog(@"Print out these dictionary :");
    NSLog(@"The emptyDict is : %@", emptyDict);
    NSLog(@"The soleKeyValuePairDict is : %@", soleKeyValuePairDict);
    NSLog(@"The specificKeyValuePairDict is : %@", specificKeyValuePairDict);
    NSLog(@"The arrayDict is : %@", arrayDict);
    
    return;
}
