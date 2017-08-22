//
//  contentCell.h
//  MVX
//
//  Created by dahuoshi on 22/08/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol ContentCellDelegate <NSObject>

- (void)cellDidSelectContetType:(NSString *)contentType buttonIndex:(NSInteger)index;

@end

@interface contentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *contentType;
@property (weak, nonatomic) IBOutlet UIButton *centerBtn;
@property (weak, nonatomic) IBOutlet UIButton *bottomBtn;

@property (weak, nonatomic) id<ContentCellDelegate> delegate;

+ (instancetype)dequeueFromTableView:(UITableView *)tabview identifier:(NSString *)identifier;

@end
