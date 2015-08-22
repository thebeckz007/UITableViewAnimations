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
@property (weak, nonatomic) IBOutlet UIButton *btnAnimationBottomTop;
@property (weak, nonatomic) IBOutlet UIButton *btnAnimationTopBottom;
@property (weak, nonatomic) IBOutlet UIButton *btnAnimationRightLeft;
@property (weak, nonatomic) IBOutlet UIButton *btnAnimationAwesome1;
@property (weak, nonatomic) IBOutlet UIButton *btnAnimationAwesome2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // set corner radius for all buttons animation
    [self.btnAnimationBottomTop.layer setCornerRadius:15.0f];
    [self.btnAnimationTopBottom.layer setCornerRadius:15.0f];
    [self.btnAnimationRightLeft.layer setCornerRadius:15.0f];
    [self.btnAnimationAwesome1.layer setCornerRadius:15.0f];
    [self.btnAnimationAwesome2.layer setCornerRadius:15.0f];
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
    } else if ([segue.identifier isEqualToString:@"AniamtionAwesome1Segue"]) {
        DemoTableViewController *demoVC = (DemoTableViewController *)segue.destinationViewController;
        [demoVC setAnimationTableview:AnimationAwesome1];
    } else if ([segue.identifier isEqualToString:@"AniamtionAwesome2Segue"]) {
        DemoTableViewController *demoVC = (DemoTableViewController *)segue.destinationViewController;
        [demoVC setAnimationTableview:AnimationAwesome2];
    } // else if
}

@end
