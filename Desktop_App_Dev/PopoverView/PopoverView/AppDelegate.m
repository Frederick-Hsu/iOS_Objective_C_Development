//
//  AppDelegate.m
//  PopoverView
//
//  Created by Frederick Hsu on 14/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"

#import "ShareViewController.h"
#import "FeedbackViewController.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;

    @property (nonatomic, strong) NSPopover *sharePopover;
    @property (nonatomic, strong) NSPopover *feedbackPopover;

    @property (nonatomic, strong) ShareViewController *shareViewController;
    @property (nonatomic, strong) FeedbackViewController *feedbackViewController;

@end



@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        // Insert code here to initialize your application
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }

#pragma mark-- Initialize 2 popover view :
- (NSPopover *)sharePopover
{
    if (!_sharePopover)
    {
        _sharePopover = [[NSPopover alloc] init];
        _sharePopover.contentViewController = self.shareViewController;
        _sharePopover.behavior = NSPopoverBehaviorTransient;    // 只要点击到NSPopover显示的窗口之外就自动关闭
    }
    return _sharePopover;
}

- (NSPopover *)feedbackPopover
{
    if (!_feedbackPopover)
    {
        _feedbackPopover = [[NSPopover alloc] init];
        _feedbackPopover.contentViewController = self.feedbackViewController;
        _feedbackPopover.behavior = NSPopoverBehaviorSemitransient;     // 只要点击到NSPopover显示的窗口之外就自动关闭，但是点击到当前App窗口之外不会关闭
    }
    return _feedbackPopover;
}

    - (IBAction)sharePopoverButtonClicked:(id)sender
    {
        NSButton *btn = sender;
        [self.sharePopover showRelativeToRect:[btn bounds]
                                       ofView:btn
                                preferredEdge:NSRectEdgeMaxY];  // 显示在button下面
    }

    - (IBAction)feedbackPopoverButtonClicked:(id)sender
    {
        NSButton *button = sender;
        [self.feedbackPopover showRelativeToRect:[button bounds]
                                          ofView:button
                                   preferredEdge:NSRectEdgeMinY];
    }

    - (ShareViewController *)shareViewController
    {
        if (!_shareViewController)
        {
            _shareViewController = [[ShareViewController alloc] init];
        }
        return _shareViewController;
    }

    - (FeedbackViewController *)feedbackViewController
    {
        if (!_feedbackViewController)
        {
            _feedbackViewController = [[FeedbackViewController alloc] init];
        }
        return _feedbackViewController;
    }


@end
