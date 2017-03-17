//
//  AppDelegate.h
//  Menu_and_Toolbar
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

    @property (weak) IBOutlet NSToolbarItem *toolbarItemOpen;
    - (IBAction)toolbarItemOpenClicked:(id)sender;

@end

