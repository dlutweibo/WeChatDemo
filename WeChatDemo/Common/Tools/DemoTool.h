//
//  DemoTool.h
//  WeChatDemo
//
//  Created by 魏博 on 15/10/13.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ContactItem.h"

@interface DemoTool : NSObject

+ (NSMutableArray *) getDataWithArray:(NSMutableArray *)aArray;
+ (NSMutableArray *) getSectionWtihArray:(NSMutableArray *)aArray;

@end
