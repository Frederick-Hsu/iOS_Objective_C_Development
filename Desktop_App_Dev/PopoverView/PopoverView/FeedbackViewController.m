//
//  FeedbackViewController.m
//  PopoverView
//
//  Created by Frederick Hsu on 14/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "FeedbackViewController.h"

@interface FeedbackViewController ()

@end

@implementation FeedbackViewController

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        // Do view setup here.
    }

    - (IBAction)commitButtonClicked:(id)sender
    {
        NSButton *button = sender;
        NSString *name      = self.nameField.stringValue,
                 *password  = self.passwordField.stringValue;
        
        NSLog(@"Now you have entered name : \"%@\" and password \"%@\".", name, password);
        
        /* Clean the 2 fields */
        self.nameField.stringValue = @"";
        self.passwordField.stringValue = @"";
    }

@end
