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
        @public
        float weight;
        int age;
    }

        -(void)display;

    @end


#endif  /* STUDENT_H */