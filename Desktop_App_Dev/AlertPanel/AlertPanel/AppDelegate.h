//
//  AppDelegate.h
//  AlertPanel
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

    @property (weak) IBOutlet NSTextField *usernameField;
    @property (weak) IBOutlet NSSecureTextField *passwordSecureField;
    @property (weak) IBOutlet NSSecureTextField *confirmpasswordSecureField;

    - (IBAction)registerButtonClicked:(id)sender;
    - (IBAction)cancelButtonClicked:(id)sender;


@end

