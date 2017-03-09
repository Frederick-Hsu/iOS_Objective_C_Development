/**************************************************************************************************
 * File nae     : CPerson.m
 * Description  : Implement the class CPerson
 * Creator      : Frederick Hsu
 * Creation date: Sun.  24 JULY, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "CPerson.h"

@implementation CPerson

#if !defined (ENABLE_ARC)
    -(void)dealloc
    {
        NSLog(@"NOTICE : %@ has already been destroyed!", self);
        [super dealloc];    // 调用父类的dealloc方法
    }
#else
    /* 当启用自动引用计数ARC之后，编译器会自动隐性地添加retain, release操作。
     * 
     * ARC机制在使用时需要遵循的两个基本原则：
     * 1. retain, release, autorelease, dealloc方法的调用由编译器生成
     * 2. dealloc方法可以在子类中重写，但是不能被调用，即不可以在dealloc方法中调用父类的dealloc方法。
     */
    -(void)dealloc
    {
        NSLog(@"%@ was destroyed!", self);
        // [super dealloc];    // Error : ARC forbids explicit message send of 'dealloc'
        NSLog(@"Person %@ was destroyed!", self);
    }
#endif

    -(id)initWithAge : (int)age
    {
        self = [super init];
        if (self != nil)
        {
            _age = age;
        }
        return self;
    }

@end