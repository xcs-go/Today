//
//  TodayTableViewCell.h
//  Today
//
//  Created by 谢朝森 on 16/5/5.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodayDateModel.h"


@interface TodayTableViewCell : UITableViewCell

/**
 *  快速的创建一个UITableViewCell
 */
+ (TodayTableViewCell *)tableViewCell;

/**
 *  数据模型
 */
@property(nonatomic, strong)TodayDateModel* model;

@end
