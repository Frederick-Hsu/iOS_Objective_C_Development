/**************************************************************************************************
 * File name    : Car.h
 * Description  : Declare the class of Car.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  13 July, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#ifndef CAR_H
#define CAR_H

    #import <Foundation/Foundation.h>

    @interface Car : NSObject
    {
        @public
        float price;
        int wheel;
    }

        -(void)run;

    @end

#endif  /* CAR_H */