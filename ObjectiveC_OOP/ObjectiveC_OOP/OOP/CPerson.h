/**************************************************************************************************
 * File name    : CPerson.h
 * Description  : Declare the class CPerson
 * Creator      : Frederick Hsu
 * Creation date: Sat.  23 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef CPERSON_H
#define CPERSON_H

    #import <Foundation/Foundation.h>

    @interface CPerson :NSObject

        @property (nonatomic, copy) NSString *name;
        @property (nonatomic, assign) int age;

        -(id)initWithName : (NSString *)name : (int)age;
        -(NSString *)description;

    @end

#endif  /* CPERSON_H */