/**************************************************************************************************
 * File name    : ScrayBugData.h
 * Description  : Create a new class ScrayBugData to describe the bug objects.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  2 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef SCRAYBUGDATA_H
#define SCRAYBUGDATA_H


    #import <Foundation/Foundation.h>

    @interface ScrayBugData : NSObject

        @property (nonatomic, strong) NSString *title;
        @property (nonatomic, assign) float rating;

        - (instancetype)initWithTitle:(NSString *)title rating:(float)rating;

    @end


#endif  /* SCRAYBUGDATA_H */
