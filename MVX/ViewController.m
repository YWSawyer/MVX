//
//  ViewController.m
//  MVX
//
//  Created by dahuoshi on 22/08/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "ViewController.h"
#import "contentCell.h"
#import "contenCellModel.h"
#import "OtherController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,ContentCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tabView;
@property (strong, nonatomic) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tabView.tableFooterView = [UIView new];
    self.tabView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 1, 1)];
//    self.automaticallyAdjustsScrollViewInsets = NO;
}


- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray arrayWithCapacity:3];
        NSArray *contentTypes = @[@"MVC",@"MVP",@"MVVM"];
        NSArray *Infos1       = @[@"查看他人信息",@"查看个人信息",@"查看个人信息"];
        NSArray *Infos2       = @[@"查看个人信息",@"",@""];
        for (int i=0; i<3; i++) {
            contenCellModel *model = [contenCellModel new];
            model.contentType      = contentTypes[i];
            model.Info1        = Infos1[i];
            model.Info2         = Infos2[i];
            [_dataArray addObject:model];
        }
    }
    return _dataArray;
}

#pragma -mark Tableview DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"cellTest";
    contentCell *cell = [contentCell dequeueFromTableView:tableView identifier:cellIdentifier];
    contenCellModel *model = self.dataArray[indexPath.row];
    cell.delegate = self;
    cell.contentType.text = model.contentType;
    [cell.centerBtn setTitle:model.Info1 forState:UIControlStateNormal];
    if (indexPath.row == 0) {
        [cell.bottomBtn setTitle:model.Info2 forState:UIControlStateNormal];
        cell.bottomBtn.hidden = NO;
        cell.backgroundColor = [UIColor lightGrayColor];
    }else if(indexPath.row == 1){
        cell.bottomBtn.hidden = YES;
        cell.backgroundColor = [UIColor orangeColor];
    }else{
        cell.bottomBtn.hidden = YES;
        cell.backgroundColor = [UIColor yellowColor];
    }
    return cell;
}


- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 1;
}
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 60;
//}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
#pragma ContentCellDelegate 

- (void)cellDidSelectContetType:(NSString *)contentType buttonIndex:(NSInteger)index {
    NSLog(@"contentType:%@  buttonIndex:%ld",contentType,(long)index);
    OtherController *vc = [OtherController new];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
