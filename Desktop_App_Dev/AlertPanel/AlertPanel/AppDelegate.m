//
//  AppDelegate.m
//  AlertPanel
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        // Insert code here to initialize your application
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }


    - (IBAction)registerButtonClicked:(id)sender
    {
        NSString *password          = self.passwordSecureField.stringValue,
                 *confirmpassword   = self.confirmpasswordSecureField.stringValue;
        if ([password length] < 6)
        {
            NSAlert *alert = [[NSAlert alloc] init];    /* Add an alert panel */
            [alert addButtonWithTitle:@"OK"];
            [alert setMessageText:@"Alert"];    /* Alert title */
            [alert setInformativeText:@"Password length must be more than 6 characters!"];  /* Detail info. */
            [alert setAlertStyle:NSAlertStyleInformational /* NSInformationalAlertStyle */];
            
            [alert beginSheetModalForWindow:self.window completionHandler:^(NSModalResponse returnCode)
             {
                 /* When user click the "OK" button on the alert panel, trigger this callback */
             }];
            
        }
        else if (![password isEqualToString:confirmpassword])
        {
            NSAlert *alert = [[NSAlert alloc] init];
            [alert addButtonWithTitle:@"OK"];
            [alert setMessageText:@"Alert"];
            [alert setInformativeText:@"The 2 passwords you entered in both Password textbox and Confirm Password textbox are not identical. \n\nPlease retry."];
            [alert setAlertStyle:NSAlertStyleCritical];
            
            [alert beginSheetModalForWindow:self.window completionHandler:^(NSModalResponse returnCode)
             {
                 /* Insert your customized business code here */
             }];
        }
        else
        {
            NSLog(@"Registration passed!");
        }
    }

    - (IBAction)cancelButtonClicked:(id)sender
    {
        _usernameField.stringValue = @"";
        _passwordSecureField.stringValue = @"";
        _confirmpasswordSecureField.stringValue = @"";
    }


@end
