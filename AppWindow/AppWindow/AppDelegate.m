/**************************************************************************************************
 * File name    : AppDelegate.m
 * Description  : Implement the class AppDelegate and extend it.
 * Creator      : Frederick Hsu
 * Creation date: Mon.  06 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/


#import "AppDelegate.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;

    - (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag;

@end


@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        /* Insert code here to initialize your application */
        
        [self.window makeKeyAndOrderFront:self];    /* Display the window after launch */
        
        [self setWindowIcon];
        [self setWindowBackgroundColor];
        [self addButtonToTitleBar];
        // [self setWindowDisplayPosition];
    }

    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        /* Insert code here to tear down your application */
    }

    - (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
    /* After you have closed the window, you should terminate the application, to guarentee that
     * the last window or current sole window will quit automatically.
     */
    {
        return YES;
    }

    - (void)recvWindowWillCloseMesg:(NSNotification *)notification
    /* Monitoring the notification message when the window will close, the notification type is
     * defined as NSWindowWillCloseNotification
     */
    {
        NSWindow *window = notification.object;
        if (self.window == window)
        {
            [NSApp terminate:self];
        }
    }

    - (NSWindow *)showMyWindow
    {
        if (!_myWindow)
        {
            NSRect frame = CGRectMake(0, 0, 200, 200);
            NSUInteger style = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable;
            /* style = NSTitledWindowMask      | NSClosableWindowMask      | NSMiniaturizableWindowMask      | NSResizableWindowMask; */
            _myWindow = [[NSWindow alloc] initWithContentRect:frame styleMask:style backing:NSBackingStoreBuffered defer:YES];
            _myWindow.title = @"New window";
        }
        return _myWindow;
    }

    - (void)setWindowIcon
    {
        [self.window setRepresentedURL:[NSURL URLWithString:@"WindowTitle"]];
        [self.window setTitle:@"SQLiteApp"];
        NSImage *image = [NSImage imageNamed:@"My_Favorite_Icon"];
        [[self.window standardWindowButton:NSWindowDocumentIconButton] setImage:image];
    }

    - (void)setWindowBackgroundColor
    {
        [self.window setOpaque:NO];
        [self.window setBackgroundColor:[NSColor greenColor]];
    }

    - (void)addButtonToTitleBar
    /* Add a button onto the window title area
     * It retrieves the super view of contentView.
     */
    {
        NSView *titleView = [self.window standardWindowButton:NSWindowCloseButton].superview;
        NSButton *button = [[NSButton alloc] init];     /* Instantiate a new button object */
        button.title = @"Register";
        float button_xstart_position = self.window.contentView.frame.size.width - 100;
        
        /* Set the position for the button view */
        button.frame = NSMakeRect(button_xstart_position, 0, 80, 24);
        button.bezelStyle = NSBezelStyleRounded;
        
        /* Add the button view onto the contentView indeed. */
        [titleView addSubview:button];
    }

    - (void)setWindowDisplayPosition
    {
        /* Firstly MUST turn off the isRestorable property */
        [self.window setRestorable:NO];
        
        NSRect frame = NSMakeRect(0, 0, 100, 100);
        /* Set the window frame displayed on the specified position */
        [self.window setFrame:frame display:YES];
    }

    - (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
    {
        [self.window makeKeyAndOrderFront:self];
        return YES;
    }

@end
