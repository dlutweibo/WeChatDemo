//
//  DemoTool.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/13.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "DemoTool.h"

@implementation DemoTool

+ (NSMutableArray *) getDataWithArray:(NSMutableArray *)aArray{
    NSMutableArray *ans = [[NSMutableArray alloc] init];
    
    NSArray *serializeArray = [(NSArray *)aArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        int i;
        NSString *strA = ((ContactItem*)obj1).alif;
        NSString *strB = ((ContactItem *)obj2).alif;
        for (i = 0; i < strA.length && i < strB.length; i ++) {
            char a = [strA characterAtIndex:i];
            char b = [strB characterAtIndex:i];
            if (a > b) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            else if (a < b) {
                return (NSComparisonResult)NSOrderedAscending;
            }
        }
        
        if (strA.length > strB.length) {
            return (NSComparisonResult)NSOrderedDescending;
        }
        else if (strA.length < strB.length){
            return (NSComparisonResult)NSOrderedAscending;
        }
        
        return (NSComparisonResult)NSOrderedSame;
    }];
    
    char lastC = '1';
    NSMutableArray *data;
    NSMutableArray *oth = [[NSMutableArray alloc] init];
    for (ContactItem *user in serializeArray) {
        char c = [user.alif characterAtIndex:0];
        if (!isalpha(c)) {
            [oth addObject:user];
        }
        else if (c != lastC){
            lastC = c;
            if (data && data.count > 0) {
                [ans addObject:data];
            }
            
            data = [[NSMutableArray alloc] init];
            [data addObject:user];
        }
        else {
            [data addObject:user];
        }
    }
    if (data && data.count > 0) {
        [ans addObject:data];
    }
    if (oth.count > 0) {
        [ans addObject:oth];
    }
    
    return ans;
}

+ (NSMutableArray *) getSectionWtihArray:(NSMutableArray *)aArray{
    NSMutableArray *section = [[NSMutableArray alloc] init];
    [section addObject:UITableViewIndexSearch];
    for (NSArray *item in aArray) {
        ContactItem *user = [item objectAtIndex:0];
        char c = [user.alif characterAtIndex:0];
        if (!isalpha(c)) {
            c = '#';
        }
        [section addObject:[NSString stringWithFormat:@"%c", toupper(c)]];
    }
    
    return section;
}

@end
