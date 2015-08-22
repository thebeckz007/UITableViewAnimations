//
//  DemoTableViewController.m
//  DemoUITableViewAnimation
//
//  Created by Phan Anh Duy on 8/18/15.
//  Copyright (c) 2015 Phan Anh Duy. All rights reserved.
//

#import "DemoTableViewController.h"

@interface DemoTableViewController () <UITableViewDataSource> {
    NSMutableArray *arrData;
    __weak IBOutlet UITableView *tbvView;
}

@end

@implementation DemoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // load data
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadData {
    // initial array data
    arrData = [[NSMutableArray alloc] init];
    NSInteger iCount = 100;
    for (NSInteger i = 0; i < iCount; i++) {
        [arrData addObject:[NSString stringWithFormat:@"TEXT - %ld", (long)i]];
    }
    
    [tbvView reloadData];

    dispatch_async(dispatch_get_main_queue(), ^{
        [tbvView performAnimation:self.animationTableview finishBlock:^(bool finished) {
            
        }];
    });
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

static NSString *const cellIdentifier = @"cellDemo";

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    // check initial
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    [cell.textLabel setText:[arrData objectAtIndex:indexPath.row]];
    [cell.textLabel setTextColor:[UIColor whiteColor]];
    [cell setBackgroundColor:[UIColor colorWithRed:255/ 255.0 green:98/ 255.0 blue:90/ 255.0 alpha:1.0]];
    return cell;
}

@end
