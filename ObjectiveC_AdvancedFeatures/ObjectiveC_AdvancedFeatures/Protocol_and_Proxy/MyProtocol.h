/**************************************************************************************************
 * File name    : MyProtocol.h
 * Description  : Study how to create a protocol and use it.
 * Creator      : Frederick Hsu
 * Creation date: Wed.  07 Sep. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef MYPROTOCOL_H
#define MYPROTOCOL_H

    #import <Foundation/Foundation.h>

    @protocol MyProtocol <NSObject>

        @required

            -(void)eat;

        @optional

            -(void)run;

    @end

#endif  /* MYPROTOCOL_H */
