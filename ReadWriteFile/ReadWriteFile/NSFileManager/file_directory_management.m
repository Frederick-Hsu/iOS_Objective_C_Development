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

void createFilePath(void)
{
    /* Create file manager */
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    
    /* Create file path */
    NSString *filePath = @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/";
    
    /* Retrieve the file path */
    NSString *fileName = [filePath stringByAppendingPathComponent:@"student"];
    
    /* Create the binary data */
    NSString *str = @"Welcome to Objective-C programming world.";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    /* Create a file under current directory */
    [fileMgr createFileAtPath:fileName contents:data attributes:nil];
    
    /* Check whether the file existed */
    BOOL fileExisted = [fileMgr fileExistsAtPath:filePath];
    if (fileExisted)
    {
        NSLog(@"The specific file had been created successfully.");
    }
    else
    {
        NSLog(@"Failed to create the specific file.");
    }
    return;
}

void copyFileAtPath(void)
{
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    
    /* The source path to store the user-specified file before copying */
    NSString *srcPath  = @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/student",
             *destPath = @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/NSFileManager/student_backup";
    
    /* Check the existence of the user-specified file */
    BOOL originFileExistedFlag = [fileMgr fileExistsAtPath:srcPath];
    if (originFileExistedFlag == YES)
    {
        NSLog(@"The desired file already existed.");
        
        /* Then start to copy file */
        [fileMgr copyItemAtPath:srcPath toPath:destPath error:nil];
        
        /* Check the copied file is existed? */
        BOOL targetFileExistedFlag = [fileMgr fileExistsAtPath:destPath];
        if (targetFileExistedFlag == YES)
        {
            NSLog(@"The user-specified file had been copied to your destination path.");
        }
        else
        {
            NSLog(@"Failed to copy the user-specified file.");
        }
    }
}

void deleteFileAtPath(void)
{
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    NSString *filePath = @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/NSFileManager/student_backup";
    
    /* Firstly check the existence of your file */
    if (YES == [fileMgr fileExistsAtPath:filePath])
    {
        /* Remove the specified file */
        [fileMgr removeItemAtPath:filePath error:nil];
        
        if (NO == [fileMgr fileExistsAtPath:filePath])
        {
            NSLog(@"Your file haved been deleted.");
        }
        else
        {
            NSLog(@"Failed to remove your file. Please retry.");
        }
    }
}
