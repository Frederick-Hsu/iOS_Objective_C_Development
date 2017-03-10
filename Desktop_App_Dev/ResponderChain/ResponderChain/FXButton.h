/**************************************************************************************************
 * File name    : FXButton.h
 * Description  : Customize the class FXButton, inherited from NSButton.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  09 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#ifndef FXBUTTON_H
#define FXBUTTON_H

    #import <Cocoa/Cocoa.h>

    @interface FXButton : NSButton

        - (void)scrollWheel:(NSEvent *)event;

    @end

#endif  /* FXBUTTON_H */
