//
//  AppDelegate.m
//  Labels
//
//  Created by Frederick Hsu on 10/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;
    @property (weak) IBOutlet NSTextField *richTextabel;

@end

/*================================================================================================*/

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        // Insert code here to initialize your application
        [self addLabel];
        [self addRichTextLabel];
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        // Insert code here to tear down your application
    }

/*================================================================================================*/

    #pragma mark-- NSTextField Label

    - (void)addLabel
    {
        NSTextField *label = [[NSTextField alloc] initWithFrame:NSMakeRect(100, 100, 200, 20)];
        [label setBezeled:NO];      // 去掉边框
        [label setDrawsBackground:NO];      // 去掉背景
        [label setEditable:NO];     // 设置为不可编辑
        label.stringValue = @"Enter your data here :";
        
        [self.window.contentView addSubview:label];
    }

    - (void)addRichTextLabel
    {
        NSString *text = @"Please visit http://www.apple.com.cn";
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:text];
        NSString *linkURLText = @"http://www.apple.com.cn";
        NSURL *linkURL = [NSURL URLWithString:linkURLText];
        
        NSRange selectedRange = [text rangeOfString:linkURLText];   // 查找字符串的范围
        
        [string beginEditing];
        [string addAttribute:NSLinkAttributeName value:linkURL range:selectedRange];    // 设置链接属性
        
        [string addAttribute:NSForegroundColorAttributeName value:[NSColor blueColor] range:selectedRange];     // 设置文字颜色
        
        [string addAttribute:NSUnderlineStyleAttributeName
                       value:[NSNumber numberWithInt:NSUnderlineStyleSingle]
                       range:selectedRange];        // 设置文本下划线
        [string endEditing];
        
    #if 0
        NSTextField *richTextLabel = [[NSTextField alloc] initWithFrame:NSMakeRect(100, 200, 400, 40)];
        richTextLabel.attributedStringValue = string;
        [richTextLabel setBezeled:NO];
        [richTextLabel setDrawsBackground:NO];
        [richTextLabel setEditable:NO];
        
        [self.window.contentView addSubview:richTextLabel];
    #else
        self.richTextabel.attributedStringValue = string;
    #endif
    }

@end
