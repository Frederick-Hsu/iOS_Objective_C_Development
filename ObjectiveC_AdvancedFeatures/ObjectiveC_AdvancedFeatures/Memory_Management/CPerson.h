/**************************************************************************************************
 * File nae     : CPerson.h
 * Description  : Declare the class CPerson
 * Creator      : Frederick Hsu
 * Creation date: Sun.  24 JULY, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef CPERSON_H
#define CPERSON_H

    #import <Foundation/Foundation.h>

    #define ENABLE_ARC

    @class Dog;

    @interface CPerson : NSObject

        @property (nonatomic, assign) int age;
        // @property (nonatomic, strong) Dog *dog;     // 属性 _dog 对 Dog的对象 *d 进行强引用，强引用可以使对象不被释放。
        @property (nonatomic, weak) Dog *dog;       // weak定义一种非所属关系，为@property属性重新设置值时，既不保留新值，也不会释放之前的旧值。

        -(id)initWithAge : (int)age;

    @end

#endif  /* CPERSON_H */