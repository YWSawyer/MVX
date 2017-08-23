//
//  BlogCell.h
//  MVX
//
//  Created by dahuoshi on 23/08/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlogCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *blogTitleLbl;
@property (weak, nonatomic) IBOutlet UILabel *blogInfoLbl;
@property (weak, nonatomic) IBOutlet UIButton *praiseBtn;
@property (weak, nonatomic) IBOutlet UIButton *shareBtn;

@end
