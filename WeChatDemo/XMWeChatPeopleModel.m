//
//  XMPeopleModel.m
//  WeChatDemo
//
//  Created by David Guo on 16/3/2.
//  Copyright © 2016年 David. All rights reserved.
//

#import "XMWeChatPeopleModel.h"

@implementation XMWeChatPeopleModel

- (instancetype)initWithDict:(NSDictionary *)dict{
    
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)peopleWithDict:(NSDictionary *)dict{
    
    return [[self alloc]initWithDict:dict];
}

@end
