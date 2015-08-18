//
//  ViewController.m
//  DemoUITableViewAnimation
//
//  Created by Phan Anh Duy on 8/18/15.
//  Copyright (c) 2015 Phan Anh Duy. All rights reserved.
//

#import "ViewController.h"
#import "DemoTableViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnAniamtionBottomTop;
@property (weak, nonatomic) IBOutlet UIButton *btnAniamtionTopBottom;
@property (weak, nonatomic) IBOutlet UIButton *btnAniamtionRightLeft;
@property (weak, nonatomic) IBOutlet UIButton *btnAniamtionAwesome;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // set corner radius for all buttons animation
    [self.btnAniamtionBottomTop.layer setCornerRadius:15.0f];
    [self.btnAniamtionTopBottom.layer setCornerRadius:15.0f];
    [self.btnAniamtionRightLeft.layer setCornerRadius:15.0f];
    [self.btnAniamtionAwesome.layer setCornerRadius:15.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AniamtionBottomTopSegue"]) {
        DemoTableViewController *demoVC = (DemoTableViewController *)segue.destinationViewController;
        [demoVC setAnimationTableview:AnimationBottomToTop];
    } else if ([segue.identifier isEqualToString:@"AniamtionTopBottomSegue"]) {
        DemoTableViewController *demoVC = (DemoTableViewController *)segue.destinationViewController;
        [demoVC setAnimationTableview:AnimationTopToBottom];
    } else if ([segue.identifier isEqualToString:@"AniamtionRightLeftSegue"]) {
        DemoTableViewController *demoVC = (DemoTableViewController *)segue.destinationViewController;
        [demoVC setAnimationTableview:AnimationRightToLeft];
    } else if ([segue.identifier isEqualToString:@"AniamtionAwesomeSegue"]) {
        DemoTableViewController *demoVC = (DemoTableViewController *)segue.destinationViewController;
        [demoVC setAnimationTableview:AnimationAwesome];
    }
    
}

@end
