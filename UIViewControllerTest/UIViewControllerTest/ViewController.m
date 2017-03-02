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

@interface ViewController ()<UITextFieldDelegate>

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
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, 300, 50)];
        
        // Set the label caption
        label.text = @"Hello, welcome to iOS development world.";
        label.backgroundColor = [UIColor grayColor];     // Set the color of background
        label.font = [UIFont systemFontOfSize:15];      // Set the font size
        label.textColor = [UIColor whiteColor];         // Set the color of text in the label
        label.textAlignment = NSTextAlignmentCenter;    // Set the alignment : Center
        label.shadowColor = [UIColor greenColor];       // Set the shadow color
        // label.shadowOffset = CGSizeMake(10, 10);        // Set the offset for shadow.
        label.numberOfLines = 0;                        // Allow to wrap the long text line.
        label.lineBreakMode = NSLineBreakByWordWrapping;
                              // NSLineBreakByCharWrapping;
        
        [self.view addSubview:label];
        
    /**********************************************************************************************/
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setBackgroundImage:[UIImage imageNamed:@"icon.gif"] forState:UIControlStateNormal];
        button.frame = CGRectMake(100, 400, 240, 30);
        button.backgroundColor = [UIColor blueColor];
        [button setTitle:@"Click me" forState:UIControlStateNormal];
        [button addTarget:self
                   action:@selector(changeColor)
         forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:button];
        
    /**********************************************************************************************/
        
        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 300, 280, 30)];
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.placeholder = @"Please enter your mobile phone number";
        textField.textColor = [UIColor redColor];
        textField.font = [UIFont systemFontOfSize:14];
        textField.textAlignment = NSTextAlignmentLeft;
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image"]];
        textField.leftView = imageView;
        textField.leftViewMode = UITextFieldViewModeAlways;
        
        textField.delegate = self;
        
        [self.view addSubview:textField];
        
    /**********************************************************************************************/
        
        UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(200, 150, 800, 20)];
        _switchOnLabel  = [[UILabel alloc] initWithFrame:CGRectMake(255, 135, 100, 60)];
        _switchOffLabel = [[UILabel alloc] initWithFrame:CGRectMake(95, 135, 100, 60)];
        _switchOnLabel.text = @"ON";
        _switchOffLabel.text = @"OFF";
        _switchOnLabel.textColor = [UIColor blackColor];
        _switchOffLabel.textColor = [UIColor blackColor];
        _switchOffLabel.textAlignment = NSTextAlignmentRight;
        _switchOnLabel.textAlignment = NSTextAlignmentLeft;
        
        mySwitch.onTintColor = [UIColor greenColor];
        mySwitch.tintColor = [UIColor redColor];
        mySwitch.thumbTintColor = [UIColor orangeColor];
        [mySwitch addTarget:self
                     action:@selector(changeHint:)
           forControlEvents:(UIControlEventValueChanged)];
        
        [self.view addSubview:mySwitch];
        [self.view addSubview:_switchOnLabel];
        [self.view addSubview:_switchOffLabel];
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

    - (void)changeHint:(UISwitch *)userSwitch
    {
        if (userSwitch.isOn)
        {
            _switchOnLabel.text = @"Switch ON";
            _switchOnLabel.textColor = [UIColor greenColor];
            
            _switchOffLabel.text = @"";
        }
        else
        {
            _switchOffLabel.text = @"Switch OFF";
            _switchOffLabel.textColor = [UIColor redColor];
            
            _switchOnLabel.text = @"";
        }
    }

    - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
                                                           replacementString:(NSString *)string
    {
        if (string.length > 0)
        {
            if (([string characterAtIndex:0] < '0') | ([string characterAtIndex:0] > '9'))
            {
                NSLog(@"Please enter digit");
                return NO;
            }
            
            if (textField.text.length + string.length > 11)
            {
                NSLog(@"Exceed 11 digits");
                return NO;
            }
        }
        return YES;
    }

@end
