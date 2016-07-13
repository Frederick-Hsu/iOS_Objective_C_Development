/**************************************************************************************************
 * File name    : Animal.h
 * Description  : Declare the class of Animal.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef ANIMAL_H
#define ANIMAL_H

    #import <Foundation/Foundation.h>

    @interface Animal : NSObject
    {
        @public
        int age;
    }

        -(void)shout;
    @end

#endif  /* ANIMAL_H */