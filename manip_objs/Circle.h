/**************************************************************************************************
 * File name    : Circle.h
 * Description  : Define a new class "Circle".
 * Creator      : Frederick Hsu
 * Creation date: Thu.  26 March 2020
 * Copyright(C) 2020    All rights reserved.
 *
 **************************************************************************************************/

#ifndef CIRCLE_H
#define CIRCLE_H

    #import <Foundation/Foundation.h>

    @interface Circle : NSObject
    {
    /*
    protected:      // default 
     */
        int radius;
        int x;
        int y;
    }

    static int sum = 5;
    /*
    public:
     */
    @property(nonatomic) int radius;
    @property(nonatomic, getter=gr, setter=sr:) int x;
    @property(nonatomic) int y;

    - (void)print;      /* - is instance method, + is class method */
    - (void)setR:(int)_r andX:(int)_x andY:(int)_y;
    + (int)allNum;

    - (void)setX:(int)_x;
    - (void)setRadius:(int)_radius;

    @end

#endif  /* CIRCLE_H */