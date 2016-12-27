/**************************************************************************************************
 * File name    : Secretary.h
 * Description  : Define a class of Secretary.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  27 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef SECRETARY_H
#define SECRETARY_H

    #import <Foundation/Foundation.h>
    #import "TicketDelegate.h"

    @interface Secretary : NSObject<TicketDelegate>

    @end

#endif  /* SECRETARY_H */
