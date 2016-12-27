/**************************************************************************************************
 * File name    : Manager.m
 * Description  : Implement the class Manager.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  27 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "Manager.h"

@implementation Manager

    -(void)buyTicket
    {
        int num = [_delegate leftTicketNumber];
        double price = [_delegate ticketPrice];
        
        NSLog(@"Through the ticket delegate, this manager can get the left tickets %d, and price is : %.2f", num, price);
        return;
    }

@end
