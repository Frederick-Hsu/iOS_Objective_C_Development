/***************************************************************************************************************************
 * File name        : Control_FunTests.m
 * Description      : The unit test cases for current "Control_Fun" project.
 * Creator          : Frédérick Hsu
 * Creation date    : Tue.  May 05, 2015
 * Copyright(C)     2015    All rights reserved.
 *
 ***************************************************************************************************************************/


#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>


@interface Control_FunTests : XCTestCase

@end



@implementation Control_FunTests

    - (void)setUp
    {
        [super setUp];
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    - (void)tearDown
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        [super tearDown];
    }

    - (void)testExample
    {
        // This is an example of a functional test case.
        XCTAssert(YES, @"Pass");
    }

    - (void)testPerformanceExample
    {
        // This is an example of a performance test case.
        [self measureBlock:^{
            // Put the code you want to measure the time of here.
        }];
    }

@end
