//
//  ViewController.m
//  SingleXibPanel
//
//  Created by Frederick Hsu on 15/03/2017.
//  Copyright © 2017 Frederick Hsu. All rights reserved.
//

#import "ViewController.h"
#import "MyPanel.h"

@interface ViewController ()

    @property (nonatomic, strong) MyPanel *panel;

    - (MyPanel *)panel;

@end

@implementation ViewController

    - (void)viewDidLoad
    {
        [super viewDidLoad];

        // Do any additional setup after loading the view.
    }


    - (void)setRepresentedObject:(id)representedObject
    {
        [super setRepresentedObject:representedObject];

        // Update the view, if already loaded.
    }

/**********************************************************************************************/

    #pragma mark-- Load user-defined xib and class, and retrieve its instance-objects.

    /* 以下的2个方法是一种通用的流程，可以用来加载任何xib文件中特定的类获取其对象实例 */
    - (IBAction)showPanelAction:(id)sender
    {
        self.panel.parentWindow = self.view.window;
        [self.view.window beginSheet:self.panel completionHandler:^(NSModalResponse returnCode)
         {
             NSLog(@"returnCode = %ld", returnCode);
         }];
    }

    - (MyPanel *)panel
    {
        if (_panel == nil)
        {
            NSNib *nib = [[NSNib alloc] initWithNibNamed:@"MyPanel" bundle:nil];
            NSArray *topLevelObjects;
            if ([nib instantiateWithOwner:self topLevelObjects:&topLevelObjects])
            {
                for (id topLevelObject in topLevelObjects)
                {
                    if ([topLevelObject isKindOfClass:[MyPanel class]])
                    {
                        _panel = topLevelObject;
                        break;
                    }
                }
            }
        }
        return _panel;
    }

@end
