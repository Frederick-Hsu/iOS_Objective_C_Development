/**************************************************************************************************
 * File name    : FXView.h
 * Description  : Customize the class FXView, inherited from NSView.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  09 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef FXVIEW_H
#define FXVIEW_H

    #import <Cocoa/Cocoa.h>

    @interface FXView : NSView

        - (void)scrollWheel:(NSEvent *)event;

    @end

#endif  /* FXVIEW_H */
