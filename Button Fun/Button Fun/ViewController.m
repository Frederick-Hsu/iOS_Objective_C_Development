/*************************************************************************************************************************
 * File name        : ViewController.m
 * Description      : Implement the controller event function for the view objects.
 * Creator          : Frederick Hsu
 * Creation date    : Tue.  April 28, 2015
 * Copyright(C)     2015    All rights reserved.
 *
 *************************************************************************************************************************/

#import "ViewController.h"

@interface ViewController ()

@end



@implementation ViewController

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
    }

    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }

    - (IBAction)buttonPressed:(UIButton *)sender
    {
        NSString *title = [sender titleForState:UIControlStateNormal];
        NSString *plainText = [NSString stringWithFormat:@"%@ had been pressed.", title];

        #if defined (DISPLAY_ATTRIBUTED_EXT)
            NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
        
            NSDictionary *attributes = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]};
        
            NSRange nameRange = [plainText rangeOfString:title];
        
            [styledText setAttributes:attributes
                                range:nameRange];
        
            _statusLabel.attributedText = styledText;
        #else
            _statusLabel.text = plainText;
        #endif
    }

@end
