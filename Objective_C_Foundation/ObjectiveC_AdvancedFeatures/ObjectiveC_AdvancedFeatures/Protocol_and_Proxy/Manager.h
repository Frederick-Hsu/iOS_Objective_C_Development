/**************************************************************************************************
 * File name    : Manager.h
 * Description  : Declare an interface of Manager.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  27 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#ifndef MANAGER_H
#define MANAGER_H

    #import <Foundation/Foundation.h>
    #import "TicketDelegate.h"

    @interface Manager : NSObject

        @property (nonatomic, weak) id<TicketDelegate> delegate;
        -(void)buyTicket;
        
    @end

#endif  /* MANAGER_H */
