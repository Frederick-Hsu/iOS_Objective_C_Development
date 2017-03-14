//
//  CollectionViewItem.m
//  CodeGenerated_CollectionView
//
//  Created by Frederick Hsu on 14/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "CollectionViewItem.h"

@interface CollectionViewItem ()

    @property (weak) IBOutlet NSImageView *collImageView;
    @property (weak) IBOutlet NSTextField *titleField;

@end

@implementation CollectionViewItem

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        
        /* Do view setup here. */
        if (!self.representedObject)
        {
            return;
        }
        self.collImageView.image = [self.representedObject objectForKey:@"image"];
        self.titleField.stringValue = [self.representedObject objectForKey:@"title"];
    }

@end
