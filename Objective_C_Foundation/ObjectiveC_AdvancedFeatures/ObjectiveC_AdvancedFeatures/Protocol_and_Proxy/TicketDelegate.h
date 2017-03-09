/**************************************************************************************************
 * File name    : TicketDelegate.h
 * Description  : Define a protocol of delegate, to help the implementation of buying ticket.
 * Creator      : Frederick Hsu 
 * Creation date: Tue.  27 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#ifndef TICKETDELEGATE_H
#define TICKETDELEGATE_H

    #import <Foundation/Foundation.h>

    @protocol TicketDelegate<NSObject>

        @required
        -(int)leftTicketNumber;
        -(double)ticketPrice;

        @optional
        
    @end

#endif  /* TICKETDELEGATE_H */
