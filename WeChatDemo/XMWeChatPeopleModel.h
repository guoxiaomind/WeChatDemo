//
//  XMPeopleModel.h
//  WeChatDemo
//
//  Created by David Guo on 16/3/2.
//  Copyright © 2016年 David. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMWeChatPeopleModel : NSObject

@property (nonatomic,copy) NSString *name;

@property (nonatomic,copy) NSString *words;

@property (nonatomic,copy) NSString *time;

@property (nonatomic,copy) NSString *image;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)peopleWithDict:(NSDictionary *)dict;

@end

