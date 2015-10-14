//
//  MeListFunctionCell.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/13.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "MeListFunctionCell.h"

@implementation MeListFunctionCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setItem:(DiscoverItem *)item{
    _item = item;
    self.imageView.image = item.image;
    self.textLabel.text = item.title;
}

@end
