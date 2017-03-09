/**************************************************************************************************
 * File name    : Leader.h
 * Description  : Create a new class "Leader" to use the delegate mode to access
 *                another class "Assistant".
 * Creator      : Frederick Hsu
 * Creation date: Fri.  28 Oct. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/

#import "Leader.h"

@implementation Leader


    -(void)buyTicket
    {
        int num = [_delegate leftTicketNumber];
        double price = [_delegate ticketPrice];
        
        NSLog(@"Through the assistant's query, now ticket had been left %d, and the price is $%f",
              num, price);
    }


@end
