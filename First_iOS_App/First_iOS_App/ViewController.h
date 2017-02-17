/**************************************************************************************************
 * File name    : ViewController.h
 * Description  : Define the prototype of View Controller.
 * Creator      : Frederick Hsu
 * Creation date: Fri.  17 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    @property (weak, nonatomic) IBOutlet UITextField *num1Text;
    @property (weak, nonatomic) IBOutlet UITextField *num2Text;
    @property (weak, nonatomic) IBOutlet UILabel *resultLabel;

    - (IBAction)computerClick;

@end

