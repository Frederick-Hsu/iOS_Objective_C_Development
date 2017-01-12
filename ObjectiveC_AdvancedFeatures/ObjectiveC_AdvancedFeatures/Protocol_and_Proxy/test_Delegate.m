/**************************************************************************************************
 * File name    : test_Delegate.m
 * Description  : Design some test cases to verify how to use the delegate mechanism.
 * Creator      : Frederick Hsu
 * Creation date: Tue.  27 Dec. 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_Delegate.h"
#import "Manager.h"
#import "Secretary.h"

void testCase4_VerifyDelegateMechanism(void)
{
    @autoreleasepool
    {
        NSLog(@"Verify the delegate mechanism : ");
        
        Manager *mgr = [[Manager alloc] init];
        Secretary *scrt = [[Secretary alloc] init];
        
        mgr.delegate = scrt;
        [mgr buyTicket];
    }
}
