//
//  ContactListCell.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/12.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "ContactListCell.h"

@implementation ContactListCell

- (void) setContact:(ContactItem *)contact{
    _contact = contact;
    _avatarView.image = contact.avatar;
    _markNameLabel.text = contact.markName;
}

@end
