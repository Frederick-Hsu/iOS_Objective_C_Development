/**************************************************************************************************
 * File name    : ScrayBugsData.h
 * Description  : Define the class ScrayBugDoc to connect the "bug" object with the images.jpg object respectively.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  2 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef SCRAYBUGDOC_H
#define SCRAYBUGDOC_H


    #import <Foundation/Foundation.h>

    @class ScrayBugData;

    @interface ScrayBugsDoc : NSObject

        @property (nonatomic, strong)ScrayBugData *data;
        @property (nonatomic, strong)NSImage *thumbImage;
        @property (nonatomic, strong)NSImage *fullImage;

        -(instancetype)initWithTitle:(NSString *)title
                              rating:(float)rating
                          thumbImage:(NSImage *)thumbImage
                           fullImage:(NSImage *)fullImage;

    @end


#endif  /* SCRAYBUGDOC_H */
