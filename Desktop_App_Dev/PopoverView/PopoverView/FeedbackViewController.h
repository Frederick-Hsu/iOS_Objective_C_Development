//
//  FeedbackViewController.h
//  PopoverView
//
//  Created by Frederick Hsu on 14/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FeedbackViewController : NSViewController

    @property (weak) IBOutlet NSTextField *nameField;
    @property (weak) IBOutlet NSSecureTextField *passwordField;

    - (IBAction)commitButtonClicked:(id)sender;

@end
