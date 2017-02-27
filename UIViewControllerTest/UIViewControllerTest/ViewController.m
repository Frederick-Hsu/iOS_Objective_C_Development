/**************************************************************************************************
 * File name    : ViewController.m
 * Description  : Implement the ViewController class.
 * Creator      : Frederick Hsu
 * Creation date: Thu.  23 Feb. 2017
 * Copyright(C  2017    All rights reserved.
 *
 **************************************************************************************************/

#import "ViewController.h"

int tip = 0;

@interface ViewController ()

@end



@implementation ViewController

    + (void)initialize
    {
        [super initialize];
        NSLog(@"%d initialized", tip++);
    }

    - (instancetype)init
    {
        self = [super init];
        if (self)
        {
            
        }
        NSLog(@"%d init", tip++);
        return self;
    }

    - (instancetype)initWithCoder:(NSCoder *)coder
    {
        self = [super initWithCoder:coder];
        if (self)
        {
            
        }
        NSLog(@"%d initWithCoder", tip++);
        return self;
    }

    - (void)awakeFromNib
    {
        [super awakeFromNib];
        NSLog(@"%d awakeFromNib", tip++);
    }

    - (void)loadView
    {
        [super loadView];
        NSLog(@"%d loadView", tip++);
    }

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        /* Do any additional setup after loading the view, typically from a nib. */
        NSLog(@"%d viewDidLoad", tip++);
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 100)];
        
        // Set the label caption
        label.text = @"Hello, world. It is a good idea, so what do you want to know?";
        label.backgroundColor = [UIColor redColor];     // Set the color of background
        label.font = [UIFont systemFontOfSize:23];      // Set the font size
        label.textColor = [UIColor whiteColor];         // Set the color of text in the label
        label.textAlignment = NSTextAlignmentCenter;    // Set the alignment : Center
        label.shadowColor = [UIColor greenColor];       // Set the shadow color
        // label.shadowOffset = CGSizeMake(10, 10);        // Set the offset for shadow.
        label.numberOfLines = 0;                        // Allow to wrap the long text line.
        label.lineBreakMode = NSLineBreakByWordWrapping;
                              // NSLineBreakByCharWrapping;
        
        [self.view addSubview:label];
        
    /**********************************************************************************************/
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(100, 400, 240, 30);
        button.backgroundColor = [UIColor blueColor];
        [button setTitle:@"Click me" forState:UIControlStateNormal];
        [button addTarget:self
                   action:@selector(changeColor)
         forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:button];
    }

    - (void)viewWillLayoutSubviews
    {
        [super viewWillLayoutSubviews];
        NSLog(@"%d viewWillLayoutSubViews", tip++);
    }

    - (void)viewDidLayoutSubviews
    {
        [super viewDidLayoutSubviews];
        NSLog(@"%d viewDidLayoutSubviews", tip++);
    }

    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        /* Dispose of any resources that can be recreated. */
        NSLog(@"%d didReceiveMemoryWarning", tip++);
    }

    - (void)viewWillAppear:(BOOL)animated
    {
        [super viewWillAppear:animated];
        NSLog(@"%d viewWillAppear", tip++);
    }

    - (void)viewDidAppear:(BOOL)animated
    {
        [super viewDidAppear:animated];
        NSLog(@"%d viewDidAppear", tip++);
    }

    - (void)viewWillDisappear:(BOOL)animated
    {
        [super viewWillDisappear:animated];
        NSLog(@"%d viewWillDisappear", tip++);
    }

    - (void)viewDidDisappear:(BOOL)animated
    {
        [super viewDidDisappear:animated];
        NSLog(@"%d viewDidDisappear", tip++);
    }

    - (void)dealloc
    {
        NSLog(@"%d dealloc", tip++);
    }

    - (void)changeColor
    {
        self.view.backgroundColor = [UIColor colorWithRed:arc4random()%0xFF/255.0
                                                    green:arc4random()%0xFF/255.0
                                                     blue:arc4random()%0xFF/255.0
                                                    alpha:1];
    }

@end
