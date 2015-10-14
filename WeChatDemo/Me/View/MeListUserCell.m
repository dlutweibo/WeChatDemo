//
//  MeListUserCell.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/13.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "MeListUserCell.h"

@implementation MeListUserCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setUser:(User *)user{
    _user = user;
    if (user.avatar) {
        _avaterView.image = user.avatar;
    }
    _nikeNameLabel.text = [NSString stringWithFormat:@"昵称：%@",user.nickName];
    _IDLabel.text = [NSString stringWithFormat:@"微信号：%@", user.ID];
    [_IDLabel sizeToFit];
    [_nikeNameLabel sizeToFit];
    
}

- (IBAction)QRButton:(id)sender {
}
@end
