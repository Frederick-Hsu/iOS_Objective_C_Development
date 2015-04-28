/*************************************************************************************************************************
 * File name        : ViewController.h
 * Description      : Define the ViewController interface class.
 * Creator          : Frederick Hsu
 * Creation date    : Tue.  April 28, 2015
 * Copyright(C)     2015    All rights reserved.
 *
 *************************************************************************************************************************/



#import <UIKit/UIKit.h>

#define DISPLAY_ATTRIBUTED_EXT

@interface ViewController : UIViewController

    @property (weak, nonatomic) IBOutlet UILabel *statusLabel;

    - (IBAction)buttonPressed:(UIButton *)sender;

@end

