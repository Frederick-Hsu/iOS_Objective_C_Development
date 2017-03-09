/**************************************************************************************************
 * File name    : ScrayBugData.m
 * Description  : Implement the class ScrayBugData's method function.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  2 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "ScrayBugData.h"

@implementation ScrayBugData

    - (instancetype)initWithTitle:(NSString *)title rating:(float)rating
    {
        if (self == [super init])
        {
            self.title = title;
            self.rating = rating;
        }
        
        return self;
    }

@end
