//
//  ContactListViewController.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/10.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactItem.h"
#import "ContactListCell.h"
#import "NSString+Alif.h"

@interface ContactListViewController : UITableViewController

@property (nonatomic, strong) NSMutableDictionary *contacts;
@property (nonatomic, strong) NSMutableArray *groups;

@end
