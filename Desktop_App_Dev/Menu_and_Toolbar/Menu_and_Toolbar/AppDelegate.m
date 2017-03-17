//
//  AppDelegate.m
//  Menu_and_Toolbar
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"

#define CODE_GENERATED_USER_TOOLBAR

#define CODE_GENERATED_CUSTOM_MENU

enum ToolbarItemTag
{
    kNoToolbarItemTag   = 0,
    kFontToolbarItemTag = 1,
    kSaveToolbarItemTag = 2,
    kOpenToolbarItemTag = 3
};

@interface AppDelegate ()<NSToolbarDelegate>

    @property (weak) IBOutlet NSWindow *window;

    #if defined (CODE_GENERATED_USER_TOOLBAR)

        - (void)setupToolbar;
        - (NSArray *)toolbarAllowedItemIdentifiers:(NSToolbar *)userToolbar;

        - (NSToolbarItem *)toolbar:(NSToolbar *)toolbar
             itemForItemIdentifier:(nonnull NSString *)itemIdentifier
         willBeInsertedIntoToolbar:(BOOL)flag;

        - (IBAction)userToolbarItemClicked:(id)sender;

    #endif

    #if defined (CODE_GENERATED_CUSTOM_MENU)
        @property (nonatomic, strong) NSMenu *customMenu;
        - (void)addContextMenu;
    #endif
        @property (weak) IBOutlet NSMenu *myMenu;
        - (IBAction)popButtonClicked:(id)sender;

@end

/**************************************************************************************************/

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        // Insert code here to initialize your application
    #if defined (CODE_GENERATED_USER_TOOLBAR)
        // self.window.titleVisibility = NSWindowTitleHidden;
        
        [self setupToolbar];
    #endif
        
    #if defined (CODE_GENERATED_CUSTOM_MENU)
        [self addContextMenu];
    #endif
        
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }


    - (IBAction)toolbarItemOpenClicked:(id)sender
    {
        NSToolbarItem *item = sender;
        NSInteger tag = item.tag;
        
        /* 根据每个toolbarItem的tag做流程处理 */
        if (tag == 1)
        {
            NSLog(@"Current toolbar item \"%@\" was clicked", item);
        }
        else if (tag == 2)
        {
            
        }
        else if (tag == -1)
        {
            
        }
    }

/**************************************************************************************************/

    #if defined (CODE_GENERATED_USER_TOOLBAR)
        - (void)setupToolbar
        {
            NSToolbar *codeGeneratedToolbar = [[NSToolbar alloc] initWithIdentifier:@"AppToolbar"];

            [codeGeneratedToolbar setAllowsUserCustomization:NO];
            [codeGeneratedToolbar setAutosavesConfiguration:NO];
            [codeGeneratedToolbar setDisplayMode:NSToolbarDisplayModeIconAndLabel];
            [codeGeneratedToolbar setSizeMode:NSToolbarSizeModeRegular];
            [codeGeneratedToolbar setDelegate:self];
            
            [self.window setToolbar:codeGeneratedToolbar];
        }

        /*================================================================*/
        #pragma NSToolbarDelegate

        - (NSArray *)toolbarAllowedItemIdentifiers:(NSToolbar *)userToolbar
        /* Toolbar上所有的item 标识 */
        {
            return @[@"FontSetting", @"Save", @"Open", @"Cut", @"Copy", @"Paste"];
        }

        - (NSArray *)toolbarDefaultItemIdentifiers:(NSToolbar *)userToolbar
        /* Toolbar上实际显示的item标识 */
        {
            return @[@"Open", @"Save", @"FontSetting"];
        }

        - (NSToolbarItem *)toolbar:(NSToolbar *)toolbar
             itemForItemIdentifier:(nonnull NSString *)itemIdentifier
         willBeInsertedIntoToolbar:(BOOL)flag
        {
            NSToolbarItem *userToolbarItem = [[NSToolbarItem alloc] initWithItemIdentifier:itemIdentifier];
            if ([itemIdentifier isEqualToString:@"FontSetting"])
            {
                [userToolbarItem setLabel:@"Font"];
                [userToolbarItem setPaletteLabel:@"Font"];
                [userToolbarItem setToolTip:@"Font setting panel"];
                [userToolbarItem setImage:[NSImage imageNamed:NSImageNameFontPanel]];
                userToolbarItem.tag = kFontToolbarItemTag;
            }
            else if ([itemIdentifier isEqualToString:@"Save"])
            {
                [userToolbarItem setLabel:@"Save"];
                [userToolbarItem setPaletteLabel:@"Save"];
                [userToolbarItem setToolTip:@"Save your file"];
                [userToolbarItem setImage:[NSImage imageNamed:@"save.png"]];
                userToolbarItem.tag = kSaveToolbarItemTag;
            }
            else if ([itemIdentifier isEqualToString:@"Open"])
            {
                [userToolbarItem setLabel:@"Open"];
                [userToolbarItem setPaletteLabel:@"Open"];
                [userToolbarItem setToolTip:@"Open a file"];
                [userToolbarItem setImage:[NSImage imageNamed:NSImageNameFolder]];
                userToolbarItem.tag = kOpenToolbarItemTag;
            }
            else
            {
                userToolbarItem = nil;
            }
            
            [userToolbarItem setMinSize:CGSizeMake(25, 25)];
            [userToolbarItem setMaxSize:CGSizeMake(100, 100)];
            [userToolbarItem setTarget:self];
            [userToolbarItem setAction:@selector(userToolbarItemClicked:)];
            
            return userToolbarItem;
        }

        - (IBAction)userToolbarItemClicked:(id)sender
        {
            NSToolbarItem *currentToolbarItem = sender;
            NSLog(@"Current toolbar item \"%@\" was clicked.", currentToolbarItem);
        }

    #endif  /* CODE_GENERATED_USER_TOOLBAR */


    #if defined (CODE_GENERATED_CUSTOM_MENU)

        - (void)addContextMenu
        {
            NSMenu *customMenu = [[NSMenu alloc] init];
            self.customMenu = customMenu;
            
            NSMenuItem *openMenuItem = [[NSMenuItem alloc] initWithTitle:@"Open" action:@selector(menuClicked:) keyEquivalent:@"O"];
            [openMenuItem setKeyEquivalentModifierMask:NSEventModifierFlagCommand];
            
            /* Submenu : Open recent... */
            NSMenuItem *openRecentMenuItem = [[NSMenuItem alloc] initWithTitle:@"Open recent..." action:nil keyEquivalent:@""];
            NSMenu *recentMenu = [[NSMenu alloc] init];
            [openRecentMenuItem setSubmenu:recentMenu];
            
            /* Submenu item of submenu "Open recent..." ---> "File 1"  and  "File 2" */
            NSMenuItem *file1MenuItem = [[NSMenuItem alloc] initWithTitle:@"File 1" action:@selector(menuClicked:) keyEquivalent:@""];
            NSMenuItem *file2MenuItem = [[NSMenuItem alloc] initWithTitle:@"File 2" action:@selector(menuClicked:) keyEquivalent:@""];
            [recentMenu addItem:file1MenuItem];
            [recentMenu addItem:file2MenuItem];
            
            NSMenuItem *closeMenuItem = [[NSMenuItem alloc] initWithTitle:@"Close" action:@selector(menuClicked:) keyEquivalent:@"X"];
            [closeMenuItem setKeyEquivalentModifierMask:NSEventModifierFlagControl];
            
            [customMenu addItem:openMenuItem];
            [customMenu addItem:openRecentMenuItem];
            [customMenu addItem:closeMenuItem];
            
#if 0
            /* Traversal all menu items recursively */
            NSMenu *menu = [NSApp menu];
            NSArray *subitem = [menu itemArray];
            for (NSMenuItem *item in subitem)
            {
                NSString *title = item.title;
                NSLog(@"title : %@", title);
                
                NSMenu *submenu = item.menu;
                NSArray *subItemArray = [submenu itemArray];
                for (NSMenuItem *subitem in subItemArray)
                {
                    NSLog(@"submenu item : %@", subitem.title);
                }
            }
#endif
            
            NSView *contextView = [[NSView alloc] initWithFrame:CGRectMake(200, 200, 120, 80)];
            [self.window.contentView addSubview:contextView];
            
            contextView.wantsLayer = YES;
            contextView.layer.backgroundColor = [NSColor redColor].CGColor;
            contextView.menu = self.customMenu;
        }

        - (IBAction)menuClicked:(id)sender
        {
            
        }

    #endif  /* CODE_GENERATED_CUSTOM_MENU */

        - (IBAction)popButtonClicked:(id)sender
        {
            NSButton *button = sender;
            NSPoint point = button.frame.origin;
            
            point.x += button.frame.size.width;
            point.y = point.y;
            
            [self.myMenu popUpMenuPositioningItem:nil atLocation:point inView:self.window.contentView];
        }




@end
