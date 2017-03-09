/**************************************************************************************************
 * File nae     : Circle.h
 * Description  : Define the class Circle, to study the class extension.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  09 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef CIRCLE_H
#define CIRCLE_H

    #import <Foundation/Foundation.h>

    @interface Circle : NSObject

        @property (nonatomic, readonly) double radius;
        @property (nonatomic, readonly) double area;

        -(void)makeCircle : (double)r;

    @end

#endif  /* CIRCLE_H */