//
//  DiscoverListCell.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/12.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "DiscoverListCell.h"

@implementation DiscoverListCell

- (void) setItem:(DiscoverItem *)item{
    _item = item;
    self.textLabel.text = item.title;
    self.detailTextLabel.text = item.detail;
    self.imageView.image = item.image;
}

@end
