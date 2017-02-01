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
#import "methods/testObject_Class_Methods.h"

void performProjectTestCases(void)
{
    testHowToUseClassObject();
    verifyOOP3Features();
    testOOPImportantFeatures();
    
    testHowToCallClassObjectMethods();
}

void testHowToUseClassObject(void)
{
    useClassCalculator();
    useClassCar();
    testSetterAndGetterMethods();
    testPropertyOfObjectiveC();
    testMethodOfObjectiveC();
}

void testHowToCallClassObjectMethods(void)
{
    testCase4_HowToCallObjectClassMethods();
}
