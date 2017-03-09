/**************************************************************************************************
 * FIle name    : test_Protocol.m
 * Description  : Compose the test case to verify how to utilize the protocol.
 * Creator      : Frederick Hsu
 * Creation date: Fri.  28 Oct. 2016
 *
 **************************************************************************************************/


#import "test_Protocol.h"
#import "ProtPerson.h"
#import "Assistant.h"
#import "Leader.h"

#import <Foundation/Foundation.h>

void testCases4_Protocol_Proxy(void)
{
    NSLog(@"Verify how to call the methods defined in the protocol : ");
    testCase4_VerifyHowToCallProtocolMethods();
    
    NSLog(@"Verify how to use the delegate : ");
    testCase4_VerifyHowToUseDelegate();
}

void testCase4_VerifyHowToCallProtocolMethods(void)
{
    @autoreleasepool
    {
        ProtPerson *pers = [[ProtPerson alloc] init];
        
        [pers eat];
        
        [pers run];
    }
}


void testCase4_VerifyHowToUseDelegate(void)
{
    @autoreleasepool
    {
        Leader *me = [[Leader alloc] init];
        Assistant *lily = [[Assistant alloc] init];
        
        me.delegate = lily;     // Assign lily as my delegate
        [me buyTicket];         // I want to buy ticket
    }
}
