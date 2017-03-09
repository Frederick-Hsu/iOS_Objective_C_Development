/**************************************************************************************************
 * File name    : NewClass.h
 * Description  : Study the difference between class methods and instance methods.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  10 Jan. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef NEW_CLASS_H
#define NEW_CLASS_H

    #import <Foundation/Foundation.h>

    @interface NewClass : NSObject

        @property (atomic, readwrite) NSString *member;

        /* 对象 遍历构造器
         * @param   member
         * @return  对象
         */
        -(instancetype)initWithMember : (NSString *)member;

        /* 类方法 遍历构造器
         * @param   member
         * @return  类对象
         */
        +(NewClass *)newObjectWithMember : (NSString *)member;

        /* 类方法创建对象
         * @param   对象
         */
        +(NewClass *)newObject;

        /* 实例方法
         *      1. 使用 [object objectMethod];
         *      2. 调用者 -> 本类的对象
         *      3. 方法中是否可以使用本类的属性：是
         */
        -(void)objectMethod;

        /* 类方法
         *      1. 使用 +
         *      2. 调用者 -> 本类的类名
         *      3. 方法中是否可以使用本类的属性：否
         */
        +(void)classMethod;

    @end

#endif  /* NEW_CLASS_H */
