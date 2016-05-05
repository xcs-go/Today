//
//  TodayController.h
//  Today
//
//  Created by 谢朝森 on 16/5/4.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TodayDateModel;

@interface TodayController : UIViewController

/**
 *  被选中的那一行的数据模型
 */
@property(nonatomic, strong)TodayDateModel* model;

@end
