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
    self.imageView.image = contact.avatar;
    self.textLabel.text = contact.markName;
    self.detailTextLabel.text = contact.moto;
    [self.detailTextLabel setFont:[UIFont systemFontOfSize:12]];
}

@end
