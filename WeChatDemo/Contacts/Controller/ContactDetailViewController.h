//
//  ContactDetailViewController.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/16.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactItem.h"

@interface ContactDetailViewController : UITableViewController

@property (nonatomic, strong) ContactItem *contact;

@property (weak, nonatomic) IBOutlet UIImageView *avatarView;
@property (weak, nonatomic) IBOutlet UILabel *markNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *IDLabel;
@property (weak, nonatomic) IBOutlet UILabel *nikeNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *sexImageView;
@property (weak, nonatomic) IBOutlet UIImageView *starImageView;

@property (weak, nonatomic) IBOutlet UILabel *tagTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *tagsLabel;

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

@property (weak, nonatomic) IBOutlet UIImageView *albumItem0;
@property (weak, nonatomic) IBOutlet UIImageView *albumItem1;
@property (weak, nonatomic) IBOutlet UIImageView *albumItem2;

@property (weak, nonatomic) IBOutlet UIImageView *moreItem0;
@property (weak, nonatomic) IBOutlet UIImageView *moreItem1;
@property (weak, nonatomic) IBOutlet UIImageView *moreItem2;

@end
