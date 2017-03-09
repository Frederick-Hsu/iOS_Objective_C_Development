/**************************************************************************************************
 * File name    : ScrayBugsData.m
 * Description  : Implement the class ScrayBugDoc, initialize the bug objects to assign them title, 
 *              : rating, thumbImage and fullImage properities.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  2 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "ScrayBugsDoc.h"
#import "ScrayBugData.h"

@implementation ScrayBugsDoc

    - (instancetype)initWithTitle:(NSString *)title
                           rating:(float)rating
                       thumbImage:(NSImage *)thumbImage
                        fullImage:(NSImage *)fullImage
    {
        if (self == [super init])
        {
            self.data = [[ScrayBugData alloc] initWithTitle:title rating:rating];
            self.thumbImage = thumbImage;
            self.fullImage = fullImage;
        }
        return self;
    }

@end
