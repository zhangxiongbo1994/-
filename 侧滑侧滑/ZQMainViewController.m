//
//  ZQMainViewController.m
//  侧滑侧滑
//
//  Created by tarena1 on 16/3/30.
//  Copyright © 2016年 tarena1. All rights reserved.
//

#import "ZQMainViewController.h"

@interface ZQMainViewController ()

@end

@implementation ZQMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 8;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
   cell.textLabel.text = @"汽车之家";
    
    return cell;
}

@end
