//
//  TodayModelF.h
//  Today
//
//  Created by 谢朝森 on 16/5/6.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class TodayDateModel;

@interface TodayModelF : NSObject

/**
 *  图像的Frame
 */
@property(nonatomic, assign)CGRect ImageViewF;

/**
 *  图片内容的描述
 */
@property(nonatomic, assign)CGRect desF;

/**
 *  接收模型数据
 */
@property(nonatomic, strong)TodayDateModel* modelF;

@end
