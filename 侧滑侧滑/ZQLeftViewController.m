//
//  ZQLeftViewController.m
//  侧滑侧滑
//
//  Created by tarena1 on 16/3/30.
//  Copyright © 2016年 tarena1. All rights reserved.
//

#import "ZQLeftViewController.h"

@interface ZQLeftViewController ()


@property(nonatomic,strong)NSArray *array;


@end

@implementation ZQLeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = @[@"登录",@"哈哈",@"电影",@"汽车",@"IOS"];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.array[indexPath.row];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        NSLog(@"0");
    }else if (indexPath.row == 1){
        NSLog(@"1");
    }
    
    
    
}




@end
