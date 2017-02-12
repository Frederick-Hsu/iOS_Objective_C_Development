/**************************************************************************************************
 * File name    : file_directory_management.m
 * Description  : Study how to manage the file and directory by using the NSFileManager interface.
 * Creator      : Frederick Hsu
 * Creation date: Sun.  12 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "file_directory_management.h"

#import <Foundation/Foundation.h>

void createAndRetrievePath(void)
{
    /* Create the object of file manager */
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    
    NSString *currentDir = [fileMgr currentDirectoryPath];
    NSLog(@"Current directory is : %@", currentDir);
    
    /* New a directory */
    NSString *dirName = @"Test_Directory";
    if ([fileMgr createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:nil] == YES)
    {
        NSLog(@"Succeeded in creating a new directory.");
    }
}
