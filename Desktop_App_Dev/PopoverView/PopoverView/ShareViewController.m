//
//  ShareViewController.m
//  PopoverView
//
//  Created by Frederick Hsu on 14/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "ShareViewController.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        // Do view setup here.
    }

    - (IBAction)radioButtonsGroupClicked:(id)sender
    {
        NSButton *radioBtn = sender;
        NSInteger tag = radioBtn.tag;
        
        if (tag == 0)
        {
            NSLog(@"You choose \"Facebook\" to share.");
        }
        else if (tag == 1)
        {
            NSLog(@"You choose \"Twitter\" to share");
        }
        else if (tag == 2)
        {
            NSLog(@"You choose \"Weibo\" to share.");
        }
    }

@end
