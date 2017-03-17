//
//  AppDelegate.m
//  Panel
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSPanel *loginPanel;

    @property (weak) IBOutlet NSTextField *usernameField;
    @property (weak) IBOutlet NSSecureTextField *passwordField;

    @property (unsafe_unretained) IBOutlet NSTextView *textView;

    - (IBAction)okButtonClicked:(id)sender;
    - (IBAction)fontButtonClicked:(id)sender;
    - (IBAction)colorButtonClicked:(id)sender;



    - (IBAction)openFilePanel:(id)sender;
    - (IBAction)saveFileAction:(id)sender;

@end

/*================================================================================================*/

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        // Insert code here to initialize your application
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }

/*================================================================================================*/

    #pragma mark-- NSButton action

    - (IBAction)loginPanelButtonClicked:(id)sender
    {
        [self.window beginSheet:self.loginPanel completionHandler:^(NSModalResponse returnCode)
         {
             NSString *username = self.usernameField.stringValue;
             NSString *password = self.passwordField.stringValue;
             
             NSLog(@"User Name : %@", username);
             NSLog(@"Password  : %@", password);
             
             self.usernameField.stringValue = @"";
             self.passwordField.stringValue = @"";
         }];
    }

    - (IBAction)okButtonClicked:(id)sender
    {
        [self.window endSheet:self.loginPanel];
    }

    - (IBAction)fontButtonClicked:(id)sender
    {
        NSFontManager *fontMgr = [NSFontManager sharedFontManager];
        [fontMgr setTarget:self];
        [fontMgr setAction:@selector(changeFont:)];
        [fontMgr orderFrontFontPanel:self];
    }

    - (void)changeFont:(id)sender
    {
        self.font = [sender convertFont:self.font];
        NSLog(@"This font \"%@\" was picked.", self.font);
    }

    - (IBAction)colorButtonClicked:(id)sender
    {
        NSColorPanel *colorPnl = [NSColorPanel sharedColorPanel];
        [colorPnl setAction:@selector(changeColor:)];
        [colorPnl setTarget:self];
        [colorPnl orderFront:nil];
    }

    - (void)changeColor:(id)sender
    {
        NSColorPanel *colorPnl = sender;
        NSColor *color = colorPnl.color;
        NSLog(@"This color \"%@\" was picked.", color);
    }

/*================================================================================================*/

    #pragma mark-- Menu actions

    - (IBAction)openFilePanel:(id)sender
    {
        NSOpenPanel *openDlg = [NSOpenPanel openPanel];
        openDlg.canChooseFiles = YES;
        openDlg.canChooseDirectories = YES;
        openDlg.allowsMultipleSelection = YES;
        openDlg.allowedFileTypes = @[@"txt", @"m", @"h", @"py"];
        [openDlg beginWithCompletionHandler:^(NSInteger result)
         {
             if (result == NSFileHandlingPanelOKButton)
             {
                 NSArray *fileURLs = [openDlg URLs];
                 for (NSURL *url in fileURLs)
                 {
                     NSError *error;
                     NSString *string = [NSString stringWithContentsOfURL:url
                                                                 encoding:NSUTF8StringEncoding
                                                                    error:&error];
                     if (!error)
                     {
                         self.textView.string = string;
                     }
                 }
             }
         }];
        
    }

    - (IBAction)saveFileAction:(id)sender
    {
        NSSavePanel *saveDlg = [[NSSavePanel alloc] init];
        saveDlg.title = @"Save file";
        saveDlg.message = @"Save your file";
        saveDlg.allowedFileTypes = @[@"txt", @"m", @"h", @"c", @"cpp", @"py"];
        saveDlg.nameFieldStringValue = @"my";
        [saveDlg beginWithCompletionHandler:^(NSInteger result)
         {
             if (result == NSFileHandlingPanelOKButton)
             {
                 NSURL *url = [saveDlg URL];
                 NSLog(@"file path url : %@", url);
                 NSString *text = self.textView.string;
                 NSError *error;
                 [text writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:&error];
                 if (error)
                 {
                     NSLog(@"Save file error : %@", error);
                 }
             }
         }];
    }

@end
