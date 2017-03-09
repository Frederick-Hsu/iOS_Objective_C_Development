/**************************************************************************************************
 * File name    : ViewController.m
 * Description  : Implement the View Controller.
 * Creator      : Frederick Hsu
 * Creation date: Fri.  17 Feb. 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        /* Do any additional setup after loading the view, typically from a nib. */
        
        [self.num1Text becomeFirstResponder];   /* Have the num1Text responded firstly */
    }


    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        /* Dispose of any resources that can be recreated. */
    }


    - (IBAction)computerClick
    {
        NSLog(@"Button monitoring succeeds.");
        
        /* Retrieve the text value from num1Text and num2Text */
        NSString *num1Str = self.num1Text.text,
                 *num2Str = self.num2Text.text;
        
        /* Calculate the sum */
        int result = [num1Str intValue] + [num2Str intValue];
        NSLog(@"The sum is %d", result);
        
        /* Display the sum on the resultLabel */
        self.resultLabel.text = [NSString stringWithFormat:@"%d", result];
        
        /* Hidden number pad */
        [self.num1Text resignFirstResponder];
        [self.num2Text resignFirstResponder];
    }

@end
