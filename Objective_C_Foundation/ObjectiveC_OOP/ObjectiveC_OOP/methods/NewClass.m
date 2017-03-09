/**************************************************************************************************
 * File name    : NewClass.m
 * Description  : Study the difference between class methods and instance methods.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  10 Jan. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "NewClass.h"

@implementation NewClass

    -(instancetype)initWithMember:(NSString *)member
    {
        if (self = [super init])
        {
            _member = member;
        }
        return self;
    }

    +(NewClass *)newObjectWithMember:(NSString *)member
    {
    #if 0
        NewClass *object = [[NewClass alloc] init];
        object.member = member;
        
        return object;
    #else
        /* 如果实现了 -initWithMember:(NSString *)member   则可以采用如下方式： */
        NewClass *object = [[NewClass alloc] initWithMember:member];
        return object;
    #endif
    }

    +(NewClass *)newObject
    {
        NewClass *object = [[NewClass alloc] init];
        return object;
    }

    -(void)objectMethod
    {
        NSLog(@"实例方法的实现 ：由于有一个具体的对象，所以可以使用对象的属性：%@", _member);
        return;
    }

    +(void)classMethod
    {
        NSLog(@"类方法的实现 ： 由于是用类名调用，没有具体对象，所以不能使用属性.");
    }

@end
