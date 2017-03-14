//
//  AppDelegate.m
//  Buttons
//
//  Created by Frederick Hsu on 10/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;

    - (IBAction)buttonClicked:(id)sender;
    - (IBAction)radioGroupClicked:(id)sender;

@end

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        // Insert code here to initialize your application
        
        [self addButton];
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }



    - (IBAction)buttonClicked:(id)sender
    {
        NSLog(@"Button clicked");
    }

    - (IBAction)radioGroupClicked:(id)sender
    {
        NSButton *radioButtons = sender;
        NSInteger tag = radioButtons.tag;
        if (tag == 0)
        {
            NSLog(@"You choose the gender : Male");
        }
        else if (tag == 1)
        {
            NSLog(@"You choose the gender : Female");
        }
        else if (tag == 2)
        {
            NSLog(@"You choose the gender : Unknown");
        }
    }


    - (void)addButton
    {
        NSButton *btn = [[NSButton alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
        
        [btn setButtonType:NSPushOnPushOffButton];      // button type
        btn.bezelStyle = NSRoundedBezelStyle;           // button style
        btn.title = @"Code-generated Button";           // button title
        
        [self.window.contentView addSubview:btn];
        
        btn.target = self;      // Set the target as the AppDelegate self
        btn.action = @selector(codeButtonClicked);      // Set the event responder is callback function : codeButtonClicked
    }

    - (IBAction)codeButtonClicked
    {
        NSLog(@"Code Button Clicked!");
    }

    - (IBAction)checkboxAction:(id)sender
    {
        NSButton *checkBtn = sender;
        BOOL isOn = checkBtn.state;
        if (isOn == true)
        {
            NSLog(@"This checkbox is checked!");
        }
        else
        {
            NSLog(@"This checkbox is unchecked!");
        }
    }

@end
