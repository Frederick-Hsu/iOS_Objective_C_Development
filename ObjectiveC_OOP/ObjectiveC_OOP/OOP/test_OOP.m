/**************************************************************************************************
 * File name    : test_OOP.m
 * Description  : Test the OOP important features in Obective-C
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_OOP.h"
#import "Person.h"

void testOOPImportantFeatures(void)
{
    NSLog(@"\n\n");
    NSLog(@"Now we can test some other important features of OOP in Objective-C.");
    testPerson();
    
    NSLog(@"\n\n");
    NSLog(@"Test the dot syntax to verify whether the default setter and getter method functions can be called?");
    testDotSyntaxToCallGetterSetter();
}

void testPerson(void)
{
    Person *p = [[Person alloc] init];
    [p setAge : 10];
    [p test];
}

void testDotSyntaxToCallGetterSetter(void)
{
    Person *p = [[Person alloc] init];
    /* 注意 ： 只有以标准默认的Getter 与 Setter 方法函数时，才能正确使用点语法来呼叫
     *        默认的Setter和Getter方法。
     *        而如果用户定义了显式的Setter或Getter方法，如 -(void)setAge : (int)age;
     *        -(int)getAge; 则使用点语法就不能正确调用。
     */
    NSLog(@"-------------------------------------------------------------");
    p.age = 10;
    NSLog(@"-------------------------------------------------------------");
    int a = p.age;
    NSLog(@"-------------------------------------------------------------");
    [p test];
}