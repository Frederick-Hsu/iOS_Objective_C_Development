/**************************************************************************************************
 * File name    : Calculator.h
 * Description  : Declare the class of Calculator.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef CALCULATOR_H
#define CALCULATOR_H

    #import <Foundation/Foundation.h>

    @interface Calculator : NSObject
    {
        
    }

        -(double)pi;
        -(double)square : (double)number;
        -(double)sumOfNumbers : (double)num1 : (double)num2;

    @end


#endif  /* CALCULATOR_H */