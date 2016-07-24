/**************************************************************************************************
 * File nae     : CPerson.h
 * Description  : Declare the class CPerson
 * Creator      : Frederick Hsu
 * Creation date: Sun.  24 JULY, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef CPERSON_H
#define CPERSON_H

    #import <Foundation/Foundation.h>

    #define ENABLE_ARC


    @interface CPerson : NSObject

        @property (nonatomic, assign) int age;

        -(id)initWithAge : (int)age;

    @end

#endif  /* CPERSON_H */