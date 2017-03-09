/**************************************************************************************************
 * File name    : NSImage+Extras.h
 * Description  : Extension to the class NSImage
 * Creator      : Ernesto Garcia Carril
 * Creation date: Fri.  3 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef NSIMAGE_EXTRAS_H
#define NSIMAGE_EXTRAS_H

    #import <Cocoa/Cocoa.h>

    @interface NSImage (Extras)
        - (NSImage *)imageByScalingAndCroppingForSize:(CGSize)targetSize;
    @end

#endif  /* NSIMAGE_EXTRAS_H */
