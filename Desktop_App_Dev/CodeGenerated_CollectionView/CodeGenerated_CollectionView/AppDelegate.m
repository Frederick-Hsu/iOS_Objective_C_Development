//
//  AppDelegate.m
//  CodeGenerated_CollectionView
//
//  Created by Frederick Hsu on 14/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"
#import "CollectionViewItem.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        // Insert code here to initialize your application
        [self addCollectionView];
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }

    - (void)addCollectionView
    {
        NSCollectionView *collectionView = [[NSCollectionView alloc] initWithFrame:[self.window.contentView bounds]];
        [[self.window contentView] addSubview:collectionView];
        // [[self.window contentView] addConstraints:@[@200, @200, @200, @200]];
        
        CollectionViewItem *itemPrototype = [[CollectionViewItem alloc] initWithNibName:@"CollectionViewItem" bundle:nil];
        collectionView.itemPrototype = itemPrototype;
        
        NSImage *computer_image = [NSImage imageNamed:NSImageNameComputer],
                *folder_image   = [NSImage imageNamed:NSImageNameFolder],
                *home_image     = [NSImage imageNamed:NSImageNameHomeTemplate],
                *list_image     = [NSImage imageNamed:NSImageNameListViewTemplate],
                *network_image  = [NSImage imageNamed:NSImageNameNetwork],
                *share_image    = [NSImage imageNamed:NSImageNameShareTemplate];
        
        NSDictionary *item1 = @{@"title" : @"computer",     @"image" : computer_image},
                     *item2 = @{@"title" : @"folder",       @"image" : folder_image},
                     *item3 = @{@"title" : @"home",         @"image" : home_image},
                     *item4 = @{@"title" : @"list",         @"image" : list_image},
                     *item5 = @{@"title" : @"network",      @"image" : network_image},
                     *item6 = @{@"title" : @"share",        @"image" : share_image};
        NSArray *content = @[item1, item2, item3, item4, item5, item6];
        
        collectionView.content = content;
    }

@end
