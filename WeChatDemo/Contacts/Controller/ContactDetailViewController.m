//
//  ContactDetailViewController.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/16.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "ContactDetailViewController.h"

@implementation ContactDetailViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    [self setupCell];
}

- (void) setupCell {
    _avatarView.image = _contact.avatar;
    _markNameLabel.text = _contact.markName;
    _nikeNameLabel.text = _IDLabel.text = nil;
    if (_contact.ID == nil) {
        if (_contact.isMark) {
            _IDLabel.text = [NSString stringWithFormat:@"昵称：%@", _contact.nickName];
        }
    }else{
        _IDLabel.text = [NSString stringWithFormat:@"微信号：%@", _contact.ID];
        if (_contact.isMark) {
            _markNameLabel.text = [NSString stringWithFormat:@"昵称：%@", _contact.nickName];
        }
    }
    _sexImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Contact_%@.png", _contact.sex ? @"Male" : @"Female"]];
    _starImageView.image = _contact.isStar ? [UIImage imageNamed:@"contactflag_star_mark.png"] : nil;
    
    if (_contact.tags.count == 0) {
        _tagTitleLabel.text = @"设置备注和标签";
    }else{
        _tagTitleLabel.text = @"标签";
        _tagsLabel.text = [self stringWithArray:_contact.tags];
    }
    
    _addressLabel.text = _contact.address;
    
    for (int i = 0; i < _contact.albumList.count; i++) {
        switch (i) {
            case 0:
                _albumItem0.image = _contact.albumList[i];
                break;
            case 1:
                _albumItem1.image = _contact.albumList[i];
                break;
            case 2:
                _albumItem2.image = _contact.albumList[i];
            default:
                break;
        }
    }
    
    for (int i = 0; i < _contact.more.count; i++) {
        switch (i) {
            case 0:
                _albumItem0.image = _contact.more[i];
                break;
            case 1:
                _albumItem1.image = _contact.more[i];
                break;
            case 2:
                _albumItem2.image = _contact.more[i];
            default:
                break;
        }
    }
    
}

- (NSString *) stringWithArray:(NSArray *)aArray {
    NSString *str = @"";
    for (int i = 0; i < aArray.count; i++) {
        if (i == 0) {
            str = [NSString stringWithFormat:@"%@", aArray[i]];
        }else{
            str = [NSString stringWithFormat:@"%@, %@", str, aArray[i]];
        }
    }
    return str;
}

@end
