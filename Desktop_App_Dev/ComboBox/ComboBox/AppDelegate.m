//
//  AppDelegate.m
//  ComboBox
//
//  Created by Frederick Hsu on 13/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

    @property (weak) IBOutlet NSWindow *window;

    - (IBAction)selectionChanged:(id)sender;

    - (IBAction)popUpAction:(id)sender;

@end

/*================================================================================================*/

@implementation AppDelegate

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        /* Insert code here to initialize your application */
        [self dynamicComboBoxConfig];
        
        self.data_array = [NSMutableArray arrayWithCapacity:4];
        [self.data_array insertObject:@"RD-1" atIndex:0];
        [self.data_array insertObject:@"RD-4 Aurora antenna design" atIndex:1];
        [self.data_array insertObject:@"RD-8 testing engineering" atIndex:2];
        [self.data_array insertObject:@"RD-11 automotive antenna solution" atIndex:3];
        
        [self.dataSourceComboBox reloadData];
        
        [self addMenuItemsIntoPopupButton];
    }


    - (void)applicationWillTerminate:(NSNotification *)aNotification
    {
        /* Insert code here to tear down your application */
    }

/*********************************************************************************/

    #pragma mark-- UI components action

    - (IBAction)selectionChanged:(id)sender
    {
        NSComboBox *comboBox = sender;
        NSInteger selectedItemIndex = comboBox.indexOfSelectedItem;
        NSString *selectedItemContent = comboBox.stringValue;
        
        NSLog(@"The selected item is \"%@\" at index %ld", selectedItemContent, selectedItemIndex);
    }

    - (void)dynamicComboBoxConfig
    {
        [self.dynamicComboBox removeAllItems];      /* Remove all original data firstly */
        NSArray *items = @[@"High school", @"College", @"University", @"Institute"];
        [self.dynamicComboBox addItemsWithObjectValues:items];    /* Add items user-specified into the combo box */
        [self.dynamicComboBox selectItemAtIndex:2]; /* Select the item of index = 2 as the first data */
    }

/*********************************************************************************/

    #pragma mark-- NSComboBox Data Source

    - (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox
    {
        // return aComboBox.numberOfItems;
        return [self.data_array count];
    }

    - (id)getItemFromComboBox:(NSComboBox *)aComboBox objectValueOfItemAtIndex:(NSInteger)index
    {
        return [aComboBox itemObjectValueAtIndex:index];
    }

    - (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index
    {
        return self.data_array[index];
    }

/*********************************************************************************/

    #pragma mark-- NSComboBox Delegate callback

    - (void)comboBoxSelectionDidChange:(NSNotification *)notification
    {
        NSComboBox *comboBox = notification.object;
        NSInteger selectedIndex = comboBox.indexOfSelectedItem;
        
        NSLog(@"comboBoxSelectionDidChange selected item %@", self.data_array[selectedIndex]);
    }

    - (void)comboBoxSelectionIsChanging:(NSNotification *)notification
    {
        NSComboBox *comboBox = notification.object;
        NSInteger selectedIndex = comboBox.indexOfSelectedItem;
        
        NSLog(@"comboBoxSelectionIsChanging selected item %@", self.data_array[selectedIndex]);
    }

/*********************************************************************************/

    #pragma mark-- NSPopUpButton

    - (void)addMenuItemsIntoPopupButton
    {
        NSArray *menuItems = @[@"REQ:10 CARDREADY?", @"REQ:10 DATAREADY?", @"REQ:5 READ?", @"CMD:5 *IDN?"];
        [self.popUpButton removeAllItems];
        [self.popUpButton addItemsWithTitles:menuItems];
    }

    - (IBAction)popUpAction:(id)sender
    {
        NSPopUpButton *pButton = sender;
        NSArray *items = pButton.itemTitles;
        NSInteger indexOfSelectedItem = pButton.indexOfSelectedItem;
        // NSString *title = items[indexOfSelectedItem];
        NSString *titleOfSelectedItem = pButton.titleOfSelectedItem;
        
        NSString *order = @"";
        if (indexOfSelectedItem == 1)
            order = @"st";
        else if (indexOfSelectedItem == 2)
            order = @"nd";
        else if (indexOfSelectedItem == 3)
            order = @"rd";
        else
            order = @"th";
        
        NSLog(@"You selected the %ld%@ item : %@", indexOfSelectedItem, order, titleOfSelectedItem);
        
        [pButton setTitle:titleOfSelectedItem];
    }

@end
