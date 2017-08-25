//
//  UserInfoView.m
//  MVX
//
//  Created by dahuoshi on 23/08/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "UserInfoView.h"

@interface UserInfoView()

@property (weak, nonatomic) IBOutlet UIImageView *userHeadImgae;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *articleCount;
@property (weak, nonatomic) IBOutlet UILabel *friendCount;
@property (weak, nonatomic) IBOutlet UILabel *personalInfo;

@end

@implementation UserInfoView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (void)setName:(NSString *)Name {
    self.userName.text = Name;
}


- (void)setPerInfo:(NSString *)perInfo {
    self.personalInfo.text = perInfo;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    return self.userName;
}
@end
