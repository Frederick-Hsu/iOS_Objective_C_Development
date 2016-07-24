/**************************************************************************************************
 * File name    : test.m
 * Description  : Declare, implement and perform the project test cases here.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test.h"
#import "use_class_object.h"
#import "test_Encapsulation_Inheritance_Polymorphism.h"
#import "OOP/test_OOP.h"

void performProjectTestCases(void)
{
    testHowToUseClassObject();
    verifyOOP3Features();
    testOOPImportantFeatures();
}

void testHowToUseClassObject(void)
{
    useClassCalculator();
    useClassCar();
    testSetterAndGetterMethods();
    testPropertyOfObjectiveC();
    testMethodOfObjectiveC();
}