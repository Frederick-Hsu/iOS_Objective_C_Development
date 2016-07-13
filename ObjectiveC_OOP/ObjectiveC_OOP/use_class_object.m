/**************************************************************************************************
 * File name    : use_class_object.m
 * Description  : Demonstrate and test how to use the class and their methods.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "use_class_object.h"
#import "Calculator.h"
#import "Car.h"

void useClassCalculator(void)
{
    Calculator *calc = [[Calculator alloc] init];
    
    double pie = [calc pi];
    NSLog(@"The value of pie =  %f", pie);
    
    double sq = [calc square : 2.5];
    NSLog(@"The square of 2.5 is : %f", sq);
    
    double sum = [calc sumOfNumbers : 2.5 : 3.6];
    NSLog(@"The sum of 2.5 and 3.6 is : %f", sum);
    
    return;
}

void useClassCar(void)
{
    Car *myCar = [[Car alloc] init];
    myCar->price = 80000.00;
    myCar->wheel = 4;
    [myCar run];
    return;
}