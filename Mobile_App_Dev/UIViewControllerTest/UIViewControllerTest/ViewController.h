/**************************************************************************************************
 * File name    : ViewController.h
 * Description  : Define the ViewController class.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  23 Feb. 2017
 * Copyright(C  2017    All rights reserved.
 *
 **************************************************************************************************/

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    @property (atomic, readwrite) UILabel *switchOnLabel;
    @property (atomic, readwrite) UILabel *switchOffLabel;

    + (void)initialize;
    - (instancetype)init;
    - (instancetype)initWithCoder:(NSCoder *)coder;
    - (void)awakeFromNib;
    - (void)loadView;
    - (void)viewDidLoad;
    - (void)viewWillLayoutSubviews;
    - (void)viewDidLayoutSubviews;
    - (void)didReceiveMemoryWarning;
    - (void)viewDidAppear:(BOOL)animated;
    - (void)viewWillAppear:(BOOL)animated;
    - (void)viewWillDisappear:(BOOL)animated;
    - (void)viewDidDisappear:(BOOL)animated;
    - (void)dealloc;

    - (void)changeColor;
    - (void)changeHint:(UISwitch *)userSwitch;

@end

