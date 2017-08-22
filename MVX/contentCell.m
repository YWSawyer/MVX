//
//  contentCell.m
//  MVX
//
//  Created by dahuoshi on 22/08/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "contentCell.h"

@implementation contentCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


+ (instancetype)dequeueFromTableView:(UITableView *)tabview identifier:(NSString *)identifier{
    contentCell *cell = [tabview dequeueReusableCellWithIdentifier:identifier];
    [cell.centerBtn addTarget:cell action:@selector(centerBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [cell.bottomBtn addTarget:cell action:@selector(bottomBtnAction) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [_centerBtn addTarget:self action:@selector(centerBtnAction) forControlEvents:UIControlEventTouchUpInside];
        [_bottomBtn addTarget:self action:@selector(bottomBtnAction) forControlEvents:UIControlEventTouchUpInside];
        return self;
    }
    return nil;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)centerBtnAction {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cellDidSelectContetType:buttonIndex:)]) {
        [self.delegate cellDidSelectContetType:self.contentType.text buttonIndex:1];
    }
}


- (void)bottomBtnAction {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cellDidSelectContetType:buttonIndex:)]) {
        [self.delegate cellDidSelectContetType:self.contentType.text buttonIndex:2];
    }
}

@end
