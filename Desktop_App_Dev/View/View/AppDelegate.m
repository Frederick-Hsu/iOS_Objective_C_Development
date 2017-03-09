/**************************************************************************************************
 * File name    : AppDelegate.m
 * Description  : Extend and implement the class AppDelegate
 * Creator      : Frederick Hsu
 * Creation date: Tue.  07 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "AppDelegate.h"
#import "BorderFrameView.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;
    @property (weak) IBOutlet NSView *layerView;

    @property (weak) IBOutlet BorderFrameView *borderFrame;

    - (void)drawViewShape;

@end

/*================================================================================================*/

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        /* Insert code here to initialize your application */
        [self configLayerView];
        
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        /* Insert code here to tear down your application */
    }

#if 0
    /*============================================================================================*/
    - (void)setFrameOrigin:(NSPoint)newOrigin
    {
        
    }

    - (void)setFrameSize:(NSSize)newSize
    {
        
    }

    - (void)setBoundsOrigin:(NSPoint)newOrigin
    {
        NSView *myView = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 100, 100)];
    }

    - (void)setBoundsSize:(NSSize)newSize
    {
        
    }
    /*============================================================================================*/
#endif

    - (void)configLayerView
    {
        self.layerView.wantsLayer = YES;
        self.layerView.layer.backgroundColor = [NSColor redColor].CGColor;
        self.layerView.layer.borderColor = [NSColor greenColor].CGColor;
        self.layerView.layer.borderWidth = 2;
        self.layerView.layer.cornerRadius = 20;
    }

    - (void)drawViewShape
    {
        [self.layerView lockFocus];
        
        NSRectFill(self.layerView.bounds);
        NSString *text = @"RoundedRect";
        NSFont *font = [NSFont fontWithName:@"Palatino-Roman" size:14.0];
        NSColor *textColor = [NSColor greenColor], *backgroundColor = [NSColor redColor];
        
        NSMutableDictionary *attrsDict = [NSMutableDictionary dictionary];
        attrsDict[NSFontAttributeName] = font;
        attrsDict[NSForegroundColorAttributeName] = textColor;
        attrsDict[NSBackgroundColorAttributeName] = backgroundColor;
        
        NSPoint point = CGPointMake(20, 20);
        [text drawAtPoint:point withAttributes:attrsDict];
        
        [self.layerView unlockFocus];
    }

@end
