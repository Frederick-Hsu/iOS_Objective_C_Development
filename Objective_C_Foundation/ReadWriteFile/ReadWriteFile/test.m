/**************************************************************************************************
 * File name    : test.m
 * Description  : Execute the test cases for current project.
 * Creator      : Frederick Hsu
 * Creation date: Sat.  11 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "test.h"
#import "testcase_read_write_plist.h"
#import "NSFileManager/test_file_directory_management.h"

void executeTestCases(void)
{
    executeTestCase4_Read_plist();
    executeTestCase4_Write_plist();
    
    executeTestCase4_NSFileManager();
}

void executeTestCase4_Read_plist(void)
{
    testCase4_Read_plist();
}

void executeTestCase4_Write_plist(void)
{
    testCase4_Write_plist();
}

void executeTestCase4_NSFileManager(void)
{
    testCase4_FileDirManagement();
}
