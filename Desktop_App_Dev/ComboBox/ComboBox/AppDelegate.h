//
//  AppDelegate.h
//  ComboBox
//
//  Created by Frederick Hsu on 13/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

    @property (weak) IBOutlet NSComboBox *dynamicComboBox;
    @property (weak) IBOutlet NSComboBox *dataSourceComboBox;
    @property (weak) IBOutlet NSPopUpButton *popUpButton;

    @property (nonatomic, strong) NSMutableArray *data_array;

    - (void)dynamicComboBoxConfig;

    - (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox;
    - (id)getItemFromComboBox:(NSComboBox *)aComboBox objectValueOfItemAtIndex:(NSInteger)index;
    - (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index;

    - (void)comboBoxSelectionDidChange:(NSNotification *)notification;
    - (void)comboBoxSelectionIsChanging:(NSNotification *)notification;

    - (void)addMenuItemsIntoPopupButton;

@end

