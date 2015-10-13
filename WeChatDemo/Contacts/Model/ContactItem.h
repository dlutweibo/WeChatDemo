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
@property (nonatomic, strong) UIImage *avatar;
@property (nonatomic, copy) NSString *moto;
@property (nonatomic, copy) NSString *alif;

@end
