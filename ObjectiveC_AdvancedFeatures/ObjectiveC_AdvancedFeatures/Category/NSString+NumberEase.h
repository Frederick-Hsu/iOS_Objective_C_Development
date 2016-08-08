/**************************************************************************************************
 * File nae     : NSString+NumberEase.h
 * Description  : Declare the category NumberEase to extend the class NSString.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  04 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef NSSTRING_NUMBEREASE_H
#define NSSTRING_NUMBEREASE_H

    #import <Foundation/Foundation.h>

    @interface NSString(NumberEase)

        -(NSNumber*)lengthAsNumber;

    @end

#endif  /* NSSTRING_NUMBEREASE_H */