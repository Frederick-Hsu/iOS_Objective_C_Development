/**************************************************************************************************
 * File name    : testObject_Class_Methods.m
 * Description  : Design test cases to test how to call class methods or the object methods.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  10 Jan. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "testObject_Class_Methods.h"

#import "NewClass.h"

void testCase4_HowToCallObjectClassMethods(void)
{
    @autoreleasepool
    {
        /* 实例方法创建对象 （继承自NSObject的init方法） */
        NewClass *object1 = [[NewClass alloc] init];
        
        /* 类方法创建对象 (自己封装) */
        NewClass *objects = [NewClass newObject];
        
        /* 实例方法遍历构造器 */
        NewClass *object3 = [[NewClass alloc] initWithMember:@"Property"];
        
        /* 类方法遍历构造器 */
        NewClass *object4 = [NewClass newObjectWithMember:@"Property"];
        
        /* 对象调用 -> 实例方法 */
        [object1 objectMethod];
        
        /* 类名调用 -> 类方法 */
        [NewClass classMethod];
    }
}
