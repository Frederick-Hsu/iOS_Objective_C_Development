/**************************************************************************************************
 * File name    : Person.h
 * Description  : Declare the class of Person.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef PERSON_H
#define PERSON_H

    #import <Foundation/Foundation.h>

    @interface Person : NSObject
    {
        int _age;   // 系统推荐使用 _全小写的变量名，来做为成员变量
    }

        -(void)setAge : (int)age;   // 标准默认的Setter方法 ： setAge  必须以小写set开头，接着首字母大写的成员变量
        -(int)getAge;               // 非标准默认的Getter方法
        -(void)test;
        -(int)age;                  // 标准默认的Getter方法 ： 必须以全部小写的成员变量来写，不带_

    @end


#endif  /* PERSON_H */