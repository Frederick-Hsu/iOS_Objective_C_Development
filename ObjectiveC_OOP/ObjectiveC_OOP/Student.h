/**************************************************************************************************
 * File name    : Student.h
 * Description  : Declare the class of Student.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef STUDENT_H
#define STUDENT_H

    #import <Foundation/Foundation.h>

    @interface Student : NSObject
    {
        @private
        float _weight;
        int _age;
    }

        -(void)display;

        -(void)setWeight : (float)weight;
        -(float)getWeight;
        -(void)setAge : (int)age;
        -(int)getAge;

    @end


#endif  /* STUDENT_H */