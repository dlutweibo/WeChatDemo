//
//  ContactItem.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/10.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ContactItem : NSObject

@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *nickName;
@property (nonatomic, copy) NSString *markName;
@property (nonatomic) BOOL sex;
@property (nonatomic, strong) UIImage *avatar;
@property (nonatomic, copy) NSString *moto;
@property (nonatomic, copy) NSString *alif;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, strong) NSMutableArray *albumList;
@property (nonatomic, getter=isMark) BOOL mark;
@property (nonatomic, getter=isStar) BOOL star;
@property (nonatomic, strong) NSMutableArray *tags;
@property (nonatomic, strong) NSMutableArray *more;

@end
