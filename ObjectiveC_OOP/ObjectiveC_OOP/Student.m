/**************************************************************************************************
 * File name    : Student.m
 * Description  : Implement the class of Student.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Student.h"

@implementation Student

    -(void)display
    {
        NSLog(@"The student's weight : %f", _weight);
        NSLog(@"and his age : %d", _age);
    }

    -(void)setWeight : (float)weight
    {
        if ((weight >= 200) || (weight <= 0))
        {
            NSLog(@"The weight you want to set is not reasonable. Discard");
            return;
        }
        _weight = weight;
        return;
    }

    -(float)getWeight
    {
        return _weight;
    }

    -(void)setAge : (int)age
    {
        if ((age >= 100) || (age <= 0))
        {
            NSLog(@"The age you want to set is not reasonable. Discard.");
            return;
        }
        _age = age;
    }

    -(int)getAge
    {
        return _age;
    }

@end