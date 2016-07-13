/**************************************************************************************************
 * File name    : Person.m
 * Description  : Implement the class of Person.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Person.h"

@implementation Person

    -(void)setAge : (int)age
    {
        _age = age;
    }

    -(int)getAge
    {
        return _age;
    }

    -(void)test
    {
        int _age = 20;
        /* 同名的变量名 _age， 局部变量会覆盖类中的成员变量 */
        NSLog(@"Current age of this person is : %d", _age);
        /* 使用self指向对象自身，才可以去访问类中的成员变量 */
        NSLog(@"The original age of this person is : %d", self->_age);
    }

@end