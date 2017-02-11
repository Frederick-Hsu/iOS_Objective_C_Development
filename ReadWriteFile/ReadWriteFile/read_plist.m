/**************************************************************************************************
 * File name    : read_plist.m
 * Description  : study how to read the property list file which is stored in XML format.
 * Creator      : Frederick Hsu
 * Creation date: Sat.  11 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "read_plist.h"
#import <Foundation/Foundation.h>

void readPropertyListFileWithMutableDict(void)
{
    NSMutableDictionary *dict_plist = [NSMutableDictionary dictionaryWithContentsOfFile:
                                       @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/Student.plist"];
    
    NSLog(@"Display the elements of plist file : %@", dict_plist);
}
