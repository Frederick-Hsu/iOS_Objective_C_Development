/**************************************************************************************************
 * File name    : FXWindow.h
 * Description  : Customize the class FXWindow, inherited from NSWindow.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  09 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef FXWINDOW_H
#define FXWINDOW_H

    #import <Cocoa/Cocoa.h>

    @interface FXWindow : NSWindow

        - (void)scrollWheel:(NSEvent *)event;

    @end

#endif  /* FXWINDOW_H */
