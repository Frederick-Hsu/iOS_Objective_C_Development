//
//  AppDelegate.h
//  Panel
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

    @property (weak) IBOutlet NSWindow *window;
    @property (weak) IBOutlet NSWindow *textBrowserWindow;

    @property (strong) NSFont *font;

    - (IBAction)loginPanelButtonClicked:(id)sender;

@end

