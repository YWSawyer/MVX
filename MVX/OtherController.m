//
//  OtherController.m
//  MVX
//
//  Created by dahuoshi on 22/08/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "OtherController.h"
#import "UserInfoView.h"
#import "BlogCell.h"

@interface OtherController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *UserInfoSuperView;

@property (weak, nonatomic) IBOutlet UITableView *blogTabView;

@end

@implementation OtherController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupUI];
}

- (void)setupUI {
    self.blogTabView.tableFooterView = [UIView new];
    self.blogTabView.estimatedRowHeight = 50;
    
    UserInfoView *userInfoView = [[[NSBundle mainBundle]loadNibNamed:@"UserInfoView" owner:nil options:nil]lastObject];
    userInfoView.frame = self.UserInfoSuperView.bounds;
    [self.UserInfoSuperView addSubview:userInfoView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark tabview delegate 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"blogCell";
    BlogCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"BlogCell" owner:nil options:nil]lastObject];
        
    }
    if (indexPath.row == 0) {
        cell.blogTitleLbl.text = @"tsyidghuggggggggggggoooooooosgadfgsdfgjaedfjb;oaev;baSNRiaRSbijopzsdjviAewpojmAVPpdofmbjvpadsofjbvap;";
        
    }else if(indexPath.row == 1){
         cell.blogTitleLbl.text = @"tsybaSNRiaRSbijopzsdjviAewpojmAVPpdofmbjvpadsofjbvap;";
    }else{
         cell.blogTitleLbl.text = @"tsyidghuggggggggggggoooooooosghuggggggggggggoooooooosgadfgsdfgjaedfjb;oaev;baSNRiaRSbijopzsdjviAewpogadfgsdfgjaedfjb;oaev;baSNRiaRSbijopzsdjviAewpojmAVPpdofmbjvpadsofjbvap;";
    }
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
