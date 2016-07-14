/**************************************************************************************************
 * File name    : Dog.h
 * Description  : Declare the class of Dog.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef DOG_H
#define DOG_H

    #import "Animal.h"

    @interface Dog : Animal
    {
        
    }

        -(void)print;
        -(void)shout;
        -(void)bark;
        -(void)run;

    @end

#endif  /* DOG_H */