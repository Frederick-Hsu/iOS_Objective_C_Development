//
//  MyPanel.m
//  SingleXibPanel
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "MyPanel.h"

@implementation MyPanel

    - (IBAction)okAction:(id)sender
    {
        [self.parentWindow endSheet:self returnCode:2];
    }

    - (IBAction)cancelAction:(id)sender
    {
        [self.parentWindow endSheet:self returnCode:1];
    }

@end
