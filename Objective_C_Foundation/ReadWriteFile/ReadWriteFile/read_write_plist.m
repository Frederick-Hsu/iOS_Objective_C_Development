/**************************************************************************************************
 * File name    : read_write_plist.m
 * Description  : study how to read the property list file which is stored in XML format.
 * Creator      : Frederick Hsu
 * Creation date: Sat.  11 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "read_write_plist.h"
#import <Foundation/Foundation.h>

void readPropertyListFileWithMutableDict(void)
{
    NSMutableDictionary *dict_plist = [NSMutableDictionary dictionaryWithContentsOfFile:
                                       @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/Student.plist"];
    
    NSLog(@"Display the elements of plist file : %@", dict_plist);
}

void writePropertyListFileOverMutableDict(void)
{
    /* Specify the location of a plist file */
    NSString *plist_path = @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/Person.plist";
    
    /* Create a dict object */
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:@"Tom" forKey:@"Name"];
    [dict setObject:@"8" forKey:@"Age"];
    [dict writeToFile:plist_path atomically:YES];
}

void writePropertyListFileOverStringOrArrayDict(void)
{
    NSMutableArray *plist_array = [NSMutableArray arrayWithObjects:@"One", @"Two", @"Name", @"School", @"Age", @"Information", nil];
    NSString *plist_path_string = @"/Users/frederick_hsu/Programming/Objective_C_Programming/ReadWriteFile/ReadWriteFile/array.plist";
    
    [plist_array writeToFile:plist_path_string atomically:YES];
    
    NSMutableArray *arrayInfo = [NSMutableArray arrayWithContentsOfFile:plist_path_string];
    for (NSObject *obj in arrayInfo)
    {
        NSLog(@"%@", obj);
    }
}
