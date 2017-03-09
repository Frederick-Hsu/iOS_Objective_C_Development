/**************************************************************************************************
 * File name    : NSScrollView+Extras.h
 * Description  : Extend the foundation class NSScrollView.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  08 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/


#ifndef NSSCROLLVIEW_EXTRAS_H
#define NSSCROLLVIEW_EXTRAS_H


    #import <Cocoa/Cocoa.h>

    @interface NSScrollView (Extras)

        - (void)disableVerticalScrollWheel:(NSEvent *)event;

    @end

#endif /* NSSCROLLVIEW_EXTRAS_H */
