//
//  TodayDateModel.m
//  Today
//
//  Created by 谢朝森 on 16/5/4.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "TodayDateModel.h"
#import "MJExtension.h"

@implementation TodayDateModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"ID":@"_id"};
}

@end
