//
//  User.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/13.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactItem.h"

@interface User : ContactItem

@property (nonatomic, strong) NSMutableArray *addresses;
@property (nonatomic, copy) NSString *phoneNumber;

@end
