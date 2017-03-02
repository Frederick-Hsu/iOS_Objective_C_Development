/**************************************************************************************************
 * File name    : MasterViewController.m
 * Description  : Implement the class MasterViewController. this class obeys the protocols
 *              : "NSTableViewDataSource" and "NSTableViewDelegate". 
 * Creator      : Frederick Hsu
 * Creation date: Thu.  2 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "MasterViewController.h"

#import "ScrayBugsDoc.h"
#import "ScrayBugData.h"

@interface MasterViewController ()<NSTableViewDataSource, NSTableViewDelegate>

@end

@implementation MasterViewController

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        /* Do view setup here. */
    }

    - (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
    {
        return self.bugs.count;
    }

    - (NSView *)tableView:(NSTableView *)tableView
       viewForTableColumn:(NSTableColumn *)tableColumn
                      row:(NSInteger)row
    {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
        
        if ([tableColumn.identifier isEqualToString:@"BugColumn"])
        {
            ScrayBugsDoc *bugDoc = [self.bugs objectAtIndex:row];
            
            cellView.imageView.image = bugDoc.thumbImage;
            cellView.textField.stringValue = bugDoc.data.title;
            
            return cellView;
        }
        return cellView;
    }

@end
