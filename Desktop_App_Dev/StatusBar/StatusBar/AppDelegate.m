//
//  AppDelegate.m
//  StatusBar
//
//  Created by Frederick Hsu on 17/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"
#import "AppViewController.h"

/**************************************************************************************************/

@interface AppDelegate ()

    @property (nonatomic, strong) NSStatusItem *statusItem;
    @property (weak) IBOutlet NSMenu *shareMenu;

    @property (strong) NSPopover *popover;
    @property (nonatomic) BOOL isShow;

    - (void)setupPopoverView;

@end

/**************************************************************************************************/

@implementation AppDelegate


    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        /* 获取系统单例的NSStatusBar对象 */
        NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
        /* 创建固定宽度的NSStatusItem */
        NSStatusItem *item = [statusBar statusItemWithLength:NSSquareStatusItemLength];
        [item.button setTarget:self];
        [item.button setAction:@selector(itemAction:)];
        item.button.image = [NSImage imageNamed:@"editor.png"];
        /* 设置下拉菜单 */
        // item.menu = self.shareMenu;
        /* 保存到属性变量 */
        self.statusItem = item;
        
        [self setupPopoverView];
        
    #if defined (DEBUG)
        NSLog(@"Now the status bar is activated.");
    #endif
    }

    - (IBAction)itemAction:(id)sender
    {
#if 0
        NSStatusItem *statusbarItem = sender;
        #if defined (DEBUG)
            NSLog(@"Current Status Bar Item is : \"%@\".", statusbarItem);
        #endif
        /* 激活应用到前台 (如果应用窗口处于非活动状态) */
        [[NSRunningApplication currentApplication] activateWithOptions:(NSApplicationActivateAllWindows | NSApplicationActivateIgnoringOtherApps)];
#else
        if (self.isShow)
        {
            [self.popover close];
        }
        else
        {
            [self.popover showRelativeToRect:NSZeroRect ofView:[self statusItem].button preferredEdge:NSRectEdgeMinY];
        }
        
        self.isShow = ~self.isShow;
#endif
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
        /* 删除 Status Bar */
        [statusBar removeStatusItem:self.statusItem];
    }


    - (void)setupPopoverView;
    {
        self.popover = [[NSPopover alloc] init];
        self.popover.contentViewController = [[AppViewController alloc] init];
        self.popover.behavior = NSPopoverBehaviorApplicationDefined;
    }

@end
