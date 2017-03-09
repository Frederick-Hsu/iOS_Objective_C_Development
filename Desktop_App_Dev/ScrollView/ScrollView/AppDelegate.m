/**************************************************************************************************
 * File name    : AppDelegate.m
 * Description  : Extend and implement the class AppDelegate
 * Creator      : Frederick Hsu
 * Creation date: Tue.  07 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "AppDelegate.h"
#import "NSScrollView+Extras.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;
    @property (weak) IBOutlet NSScrollView *imageScrollView;
    @property (weak) IBOutlet NSScrollView *textScrollView;


    @property (weak) IBOutlet NSButton *scrollButton;


    - (IBAction)clickToScrollImageToBottom:(id)sender;
    - (IBAction)clickToScrollImageToTop:(id)sender;

    - (IBAction)clickToScrollTextLeftward:(id)sender;
    - (IBAction)clickToScrollTextRightward:(id)sender;

@end


/*================================================================================================*/

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        /* Insert code here to initialize your application */
        // [self addScrollView];
        [self addImageToScrollView];
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }


    - (void)addScrollView
    {
        /*
        CGRect scrollViewFrame = CGRectMake(0, 0, 200, 200);
        NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame:scrollViewFrame];
         */
        NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame:[self.window.contentView bounds]];
        NSImage *image = [NSImage imageNamed:@"screen.png"];
        
        NSImageView *imageView = [[NSImageView alloc] initWithFrame:scrollView.bounds];
        [imageView setFrameSize:image.size];
        imageView.image = image;
        
        scrollView.hasVerticalScroller = YES;
        scrollView.hasHorizontalScroller = YES;
        scrollView.documentView = imageView;
        
        [self.window.contentView addSubview:scrollView];
    }

    - (void)addImageToScrollView
    {
        NSImage *image = [NSImage imageNamed:@"screen.png"];
        NSImageView *imageView = [[NSImageView alloc] initWithFrame:_imageScrollView.bounds];
        [imageView setFrameSize:image.size];
        imageView.image = image;
        
        _imageScrollView.hasHorizontalScroller = YES;
        _imageScrollView.hasVerticalScroller = YES;
        _imageScrollView.documentView = imageView;
        // [_imageScrollView disableVerticalScrollWheel:<#(NSEvent *)#>];
    }

    - (IBAction)clickToScrollImageToBottom:(id)sender
    /* Function name    : clickToScrollImageToBottom
     * Decription       : This is a button click action, when user click this button, it will scroll
     *                  : the image displayed in the scroll view frame to the bottom.
     * Arguments        : (id)sender    - the event sender while clicking action triggered
     * Returns          : IBAction      - the event action
     */
    {
        NSClipView *imageContentView = _imageScrollView.contentView;
        NSPoint newScrollOrigin;
        
        if (self.window.contentView.isFlipped)
        {
            newScrollOrigin = NSMakePoint(0.0, 0.0);
        }
        else
        {
            newScrollOrigin = NSMakePoint(0.0, (_imageScrollView.frame.size.height - imageContentView.frame.size.height));
        }
        /* Then start to scroll the image */
        [imageContentView scrollPoint:newScrollOrigin];
    }

    - (IBAction)clickToScrollImageToTop:(id)sender
    {
        NSClipView *imageContentView = _imageScrollView.contentView;
        NSPoint newScrollOrigin;
        
        if (self.window.contentView.isFlipped)
        {
            newScrollOrigin = NSMakePoint(0.0, 0.0);
        }
        else
        {
            newScrollOrigin = NSMakePoint((_imageScrollView.frame.size.width  - imageContentView.frame.size.width ),
                                          (_imageScrollView.frame.size.height - imageContentView.frame.size.height));
        }
        /* Then start to scroll the image */
        [imageContentView scrollPoint:newScrollOrigin];
    }

    - (IBAction)clickToScrollTextLeftward:(id)sender
    /* Function name    : clickToScrollTextLeftward
     * Description      : This is a button click action, when user clicks this button, it will scroll
     *                  : the text inside the textScrollView frame toward left side.
     * Arguments        : (id)sender    - the event sender while clicking action triggered.
     * Returns          : IBAction      - the event action.
     */
    {
        CGRect textFrame = _textScrollView.bounds;
        textFrame.origin.x = textFrame.origin.x - 10;   // Every time, the text will move leftward 10 pixels.
        _textScrollView.bounds = textFrame;
    }

    - (IBAction)clickToScrollTextRightward:(id)sender
    {
        CGRect textFrame = _textScrollView.bounds;
        textFrame.origin.x = textFrame.origin.x + 10;   // Every time, the text will move rightward 10 pixels.
        _textScrollView.bounds = textFrame;
    }

@end
