//
//  TodayDateModel.h
//  Today
//
//  Created by 谢朝森 on 16/5/4.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodayDateModel : NSObject

@property(nonatomic, assign)int ID;
/**
 *  图像
 */
@property(nonatomic, copy)NSString *pic;

/**
 *  天
 */
@property(nonatomic, assign)int day;

/**
 *  标题
 */
@property(nonatomic, copy)NSString *title;

/**
 *  月
 */
@property(nonatomic, assign)int month;

/**
 *  年
 */
@property(nonatomic, copy)NSString *year;

/**
 *  描述
 */
@property(nonatomic, copy)NSString *des;
@end
