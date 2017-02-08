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

void retrieveDictValueByKey(void)
{
    NSDictionary *dict = @{@"Name"      : @"Frederick Hsu",
                           @"Age"       : @"34",
                           @"Gender"    : @"Male",
                           @"Company"   : @"Shanghai Amphenol Airwave",
                           @"College"   : @"Shanghai Jiao Tong University"};
    id valueObj = dict[@"Age"];
    NSLog(@"The key 'Age' corresponding to value '%@'", valueObj);
    
    id dictValueObj = [dict objectForKey:@"College"];
    NSLog(@"The value of key 'College' is : %@", dictValueObj);
    
    /* 对字典中的的键进行遍历，获取其键值对 */
    for (NSString *key in dict)
    {
        NSLog(@"Key : '%@' = Value : '%@'", key, dict[key]);
    }
    
    return;
}

void changeMutableDictionary(void)
{
    /* Create a new mutable dict */
    NSMutableDictionary *weathers = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Cloudy",    @"Monday",
                                                                                      @"Sunny",     @"Tuesday",
                                                                                      @"Haze",      @"Friday",
                                                                                      @"Rainy",     @"Sunday", nil];
    NSLog(@"The key-value pairs in this mutable dictionary are : ");
    for (NSString *key in weathers)
    {
        NSLog(@"Key : %@ = Value : %@", key, weathers[key]);
    }
    
    /* Change the elements in the weathers dict. */
    NSLog(@"After change and add movement, the key-value pairs in the weathers dict. are : ");
    [weathers setObject:@"Snowy" forKey:@"Monday"];
    [weathers setObject:@"Windy" forKey:@"Wednesday"];
    for (NSObject *key in weathers)
    {
        NSLog(@"Key : %@ = Value : %@", key, weathers[key]);
    }
    
    /* Remove the elements from the weathers dict. */
    [weathers removeObjectForKey:@"Tuesday"];
    NSLog(@"After removal, the key-value pairs are : ");
    for (NSString *key in weathers)
    {
        NSLog(@"Key : %@ = Value : %@", key, weathers[key]);
    }
    
    return;
}
