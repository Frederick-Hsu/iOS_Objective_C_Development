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

@end
