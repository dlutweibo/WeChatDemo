//
//  ContactListCell.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/12.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactItem.h"

@interface ContactListCell : UITableViewCell

@property (nonatomic, strong) ContactItem *contact;
@property (weak, nonatomic) IBOutlet UILabel *markNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *avatarView;

@end
