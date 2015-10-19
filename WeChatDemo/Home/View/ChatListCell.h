//
//  ChatListCell.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/12.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatItem.h"

@interface ChatListCell : UITableViewCell

@property (nonatomic, strong) ChatItem *chat;

@property (weak, nonatomic) IBOutlet UIImageView *avatarView;
@property (weak, nonatomic) IBOutlet UILabel *markNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *notPushImageView;

@end
