/**************************************************************************************************
 * File name    : test_file_directory_management.m
 * Description  : Design test cases to verify the file and directory management through
 *              : NSFileManager interface.
 * Creator      : Frederick Hsu
 * Creation date: Sun.  12 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "test_file_directory_management.h"
#import "file_directory_management.h"

#import <Foundation/Foundation.h>

void testCase4_FileDirManagement(void)
{
    NSLog(@"\n\n");
    NSLog(@"Verify the management for file and directory : ");
    createAndRetrievePath();
    
    NSLog(@"\n\n");
    NSLog(@"Create the user-specified file at target directory : ");
    createFilePath();
    
    NSLog(@"\n\n");
    NSLog(@"Copy your specified file :");
    copyFileAtPath();
    
    NSLog(@"\n\n");
    NSLog(@"At last, removed the user-specified file : ");
    deleteFileAtPath();
    
    NSLog(@"\n\n");
    NSLog(@"Move your file to the destination folder : ");
    moveFileAtPath();
}
