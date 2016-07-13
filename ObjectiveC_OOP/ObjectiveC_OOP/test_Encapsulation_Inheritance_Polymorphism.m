/**************************************************************************************************
 * File name    : test_Encapsulation_Inheritance_Polymorphism.m
 * Description  : Test and verify the 3 important features of OOP
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_Encapsulation_Inheritance_Polymorphism.h"

#import "Animal.h"
#import "Dog.h"
#import "Cat.h"

void verifyOOP3Features(void)
{
    NSLog(@"\n\n");
    NSLog(@"Verify the 3 features of Object Oriented Programming.\n\n");
    
    NSLog(@"Inheritance feature : ");
    testInheritance();
    
    NSLog(@"\n\n");
    NSLog(@"Polymorphism feature : ");
    testPolymorphism();
}

void testInheritance(void)
{
    Dog *dog = [[Dog alloc] init];
    dog->age = 2;
    [dog shout];
    [dog print];
}

void call(Animal *al)
{
    [al shout];
}

void testPolymorphism(void)
{
    Animal *al1 = [[Dog alloc] init];   // 将子类对象当做父类类型来使用时不需要任何显式地声明
    Animal *al2 = [[Cat alloc] init];
    
    call(al1);
    call(al2);
    
    // [al1 print];    // 但此时父类对象不能调用子类的方法
    Dog *d = (Dog *)al1;    // 可将父类对象强制转换为子类对象
    [d print];
}

void typeCastingForObjects(void)
{
    Cat *c = [[Dog alloc] init];    // 不同类类型之间转换，即使强制转换或继承自同一个父类，
    Dog *dc = (Dog *)c;             // 也会带来类型不匹配警告或直接错误。
    [dc print];
}