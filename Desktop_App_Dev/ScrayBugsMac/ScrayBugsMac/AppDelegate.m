/**************************************************************************************************
 * File name    : AppDelegate.m
 * Description  : Implement the class AppDelegate's method functions.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  2 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "AppDelegate.h"

#import "MasterViewController.h"
#include "ScrayBugData.h"
#include "ScrayBugsDoc.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;
    @property (nonatomic, strong) IBOutlet MasterViewController *masterViewController;

@end


@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        /* Insert code here to initialize your application */
        self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
        
        ScrayBugsDoc *bug1 = [[ScrayBugsDoc alloc] initWithTitle:@"Potato Bug"
                                                          rating:4
                                                      thumbImage:[NSImage imageNamed:@"potatoBugThumb.jpg"]
                                                       fullImage:[NSImage imageNamed:@"potatoBug.jpg"]];
        
        ScrayBugsDoc *bug2 = [[ScrayBugsDoc alloc] initWithTitle:@"House Centipede"
                                                          rating:3
                                                      thumbImage:[NSImage imageNamed:@"centipedeThumb.jpg"]
                                                       fullImage:[NSImage imageNamed:@"centipede.jpg"]];
        
        ScrayBugsDoc *bug3 = [[ScrayBugsDoc alloc] initWithTitle:@"Wolf Spider"
                                                          rating:5
                                                      thumbImage:[NSImage imageNamed:@"wolfSpiderThumb.jpg"]
                                                       fullImage:[NSImage imageNamed:@"wolfSpider.jpg"]];
        
        ScrayBugsDoc *bug4 = [[ScrayBugsDoc alloc] initWithTitle:@"Lady Bug"
                                                          rating:1
                                                      thumbImage:[NSImage imageNamed:@"ladybugThumb.jpg"]
                                                       fullImage:[NSImage imageNamed:@"ladybug.jpg"]];
        
        NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, nil];
        self.masterViewController.bugs = bugs;
        
        
        [self.window.contentView addSubview:self.masterViewController.view];
        self.masterViewController.view.frame = self.window.contentView.bounds;
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        /* Insert code here to tear down your application */
    }


@end
