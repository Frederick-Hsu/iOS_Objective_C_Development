/**************************************************************************************************
 * File name    : Leader.h
 * Description  : Create a new class "Leader" to use the delegate mode to access 
 *                another class "Assistant".
 * Creator      : Frederick Hsu
 * Creation date: Fri.  28 Oct. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#ifndef LEADER_H
#define LEADER_H

    #import <Foundation/Foundation.h>
    #import "Assistant.h"

    @interface Leader : NSObject

        @property (nonatomic, strong) Assistant *delegate;

        -(void)buyTicket;

    @end


#endif  /* LEADER_H */
