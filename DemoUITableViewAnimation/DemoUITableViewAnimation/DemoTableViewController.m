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
    
    // initial array data
    arrData = [[NSMutableArray alloc] init];
    NSInteger iCount = 100;
    for (NSInteger i = 0; i < iCount; i++) {
        [arrData addObject:[NSString stringWithFormat:@"TEXT - %ld", i]];
    }
    
    [tbvView reloadData];
    
    [tbvView performAnimation:self.animationTableview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    for (int i = 0; i < 10000; i++) {
        NSLog(@"%d - %@", i, [arrData objectAtIndex:indexPath.row]);
    }
    return cell;
}

@end
