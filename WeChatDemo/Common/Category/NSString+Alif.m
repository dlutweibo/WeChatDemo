//
//  NSString+Alif.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/12.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "NSString+Alif.h"

@implementation NSString (Alif)

+ (NSString *)getPinYinAlif:(NSString *)aString{
    NSMutableString *str = [NSMutableString stringWithString:aString];
    CFStringTransform((CFMutableStringRef) str, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef) str, NULL, kCFStringTransformStripDiacritics, NO);
    NSString *alif = [str capitalizedString];
    return [alif substringToIndex:1];
}

@end
