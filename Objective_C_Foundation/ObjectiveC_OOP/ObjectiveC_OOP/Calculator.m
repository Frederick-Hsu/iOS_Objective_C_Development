/**************************************************************************************************
 * File name    : Calculator.m
 * Description  : Implement the class of Calculator.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Calculator.h"

@implementation Calculator


    -(double)pi
    {
        return 3.14;
    }

    -(double)square : (double)number
    {
        return (number * number);
    }

    -(double)sumOfNumbers : (double)num1 : (double)num2
    {
        return (num1 + num2);
    }


@end