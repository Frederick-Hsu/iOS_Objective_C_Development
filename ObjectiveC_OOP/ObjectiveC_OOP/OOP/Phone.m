/**************************************************************************************************
 * File name    : Phone.m
 * Description  : Implement the class Phone
 * Creator      : Frederick Hsu
 * Creation date: Sat.  23 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Phone.h"

@implementation Phone

    -(id)init
    {
        /* 初始化父类中声明的一些成员变量和属性， 返回当前对象，赋值给当前对象 */
        self = [super init];
        if (nil != self)    // 判断对象是否初始化成功
        {
            _price = 1000.00;
        }
        return self;    // 返回对象本身
    }

@end