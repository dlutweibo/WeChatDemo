//
//  ChatItem.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/12.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ChatItem : NSObject

@property (nonatomic, copy) NSString *time;
@property (nonatomic, strong) NSMutableArray *messageList;

@end
