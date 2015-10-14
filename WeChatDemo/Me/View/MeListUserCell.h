//
//  MeListUserCell.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/13.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface MeListUserCell : UITableViewCell

@property (nonatomic, strong) User *user;
@property (weak, nonatomic) IBOutlet UIImageView *avaterView;
@property (weak, nonatomic) IBOutlet UILabel *nikeNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *IDLabel;
- (IBAction)QRButton:(id)sender;

@end
