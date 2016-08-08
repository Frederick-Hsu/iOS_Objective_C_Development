/**************************************************************************************************
 * File nae     : NSString_Category.h
 * Description  : Declare the category NumberEase to extend the class NSString.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  04 Aug., 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef NSSTRING_CATEGORY_H
#define NSSTRING_CATEGORY_H

    #import <Foundation/Foundation.h>

    @interface NSString(NumberEase)

        -(NSNumber*)lengthAsNumber;

    @end

    @interface NSString (Number)

        +(int)numberCountOfString : (NSString *)str;
        -(int)numberCount;

    @end

#endif  /* NSSTRING_CATEGORY_H */