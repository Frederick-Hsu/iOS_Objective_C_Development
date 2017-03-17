/**************************************************************************************************
 * File name    : AppDelegate.m
 * Description  : Implement the AppDelegate class, implement the main UI actions.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  09 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/



#import "AppDelegate.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *loginWindow;
    @property (weak) IBOutlet NSWindow *editorWindow;


    @property (weak) IBOutlet NSTextField *usernameTextField;
    @property (weak) IBOutlet NSSecureTextField *passwordSecureTextField;

    @property (weak) IBOutlet NSSearchField *searchField;

    - (IBAction)searchAction:(id)sender;


@end

/*================================================================================================*/

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        /* Insert code here to initialize your application */
        [self registerSearchButtonAction];
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        /* Insert code here to tear down your application */
    }

/*================================================================================================*/
    #pragma mark-- NSTextField

    - (void)controlTextDidBeginEditing:(NSNotification *)obj    /* 光标进入输入框，第一次输入得到事件通知 */
    {
        id text = obj.object;
        if (text == self.usernameTextField)
        {
            NSLog(@"controlTextDidBeginEditing usernameTextField %@", self.usernameTextField.stringValue);
        }
        if (text == self.passwordSecureTextField)
        {
            NSLog(@"controlTextDidBeginEditing passwordSecureTextField %@", self.passwordSecureTextField.stringValue);
        }
    }

    - (void)controlTextDidEndEditing:(NSNotification *)obj      /* 光标离开输入框时得到事件通知 */
    {
        id text = obj.object;
        if (text == self.usernameTextField)
        {
            NSLog(@"controlTextDidEndEditing usernameTextField %@", self.usernameTextField.stringValue);
        }
        else if (text == self.passwordSecureTextField)
        {
            NSLog(@"controlTextDidEndEditing passwordSecureTextField %@", self.passwordSecureTextField.stringValue);
        }
    }

    - (void)controlTextDidChange:(NSNotification *)obj          /* 文本框正在输入，内容变化时得到事件通知 */
    {
        id text = obj.object;
        if (text == self.usernameTextField)
        {
            NSLog(@"controlTextDidChange usernameTextField %@", self.usernameTextField.stringValue);
        }
        else if (text == self.passwordSecureTextField)
        {
            NSLog(@"controlTextDidChange passwordSecureTextField %@", self.passwordSecureTextField.stringValue);
        }
    }
/*================================================================================================*/

    #pragma mark-- NSSearchField

    - (IBAction)searchAction:(id)sender
    {
        NSSearchField *searchField = sender;
        NSString *content = searchField.stringValue;
        NSLog(@"content : %@", content);
    }

    - (void)registerSearchButtonAction
    {
        NSActionCell *searchButtonCell = [[self.searchField cell] searchButtonCell];
        NSActionCell *cancelButtonCell = [[self.searchField cell] cancelButtonCell];
        searchButtonCell.target = self;
        searchButtonCell.action = @selector(searchButtonClicked:);
        cancelButtonCell.target = self;
        cancelButtonCell.action = @selector(cancelButtonClicked:);
    }

    - (IBAction)searchButtonClicked:(id)sender
    {
        NSSearchField *searchFieldSender = sender;
        NSString *content = searchFieldSender.stringValue;
        NSLog(@"searchButtonClicked : %@", content);
    }

    - (IBAction)cancelButtonClicked:(id)sender
    {
        NSSearchField *searchFieldSender = sender;
        searchFieldSender.stringValue = @"";    // Clean the serachField text.
        
        NSLog(@"cancelButtonClicked");
    }

/*================================================================================================*/
@end
