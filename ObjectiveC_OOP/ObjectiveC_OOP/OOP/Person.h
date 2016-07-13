/**************************************************************************************************
 * File name    : Person.h
 * Description  : Declare the class of Person.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef PERSON_H
#define PERSON_H

    #import <Foundation/Foundation.h>

    @interface Person : NSObject
    {
        int _age;
    }

        -(void)setAge : (int)age;
        -(int)getAge;
        -(void)test;

    @end


#endif  /* PERSON_H */