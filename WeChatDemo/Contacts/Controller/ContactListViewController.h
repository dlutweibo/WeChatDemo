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
#import "UIColor+myColor.h"
#import "DemoTool.h"
#import "ContactsSearchResultsController.h"

#define WIDTH_SCREEN        [UIScreen mainScreen].bounds.size.width
#define HEIGHT_SCREEN       [UIScreen mainScreen].bounds.size.height

@interface ContactListViewController : UITableViewController 

@property (nonatomic, strong) NSMutableArray *metaData;
@property (nonatomic, strong) NSMutableArray *contacts;
@property (nonatomic, strong) NSMutableArray *functions;
@property (nonatomic, strong) NSArray *groups;
@property (nonatomic, strong) UISearchController *searchController;
@property (nonatomic, strong) ContactsSearchResultsController *resultVC;

@end
