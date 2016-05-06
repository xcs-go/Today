//
//  TodayModelF.m
//  Today
//
//  Created by 谢朝森 on 16/5/6.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "TodayModelF.h"
#import "TodayDateModel.h"
#import "UIImageView+WebCache.h"
#import "UIView+Extension.h"

#define x 10
#define y 64
#define Iwidth [UIScreen mainScreen].bounds.size.width
#define padding 10

@interface TodayModelF ()

//@property(nonatomic, strong)UIImageView * ImageView;

@end

@implementation TodayModelF


- (void)setModelF:(TodayDateModel *)modelF{
    _modelF = modelF;
//    图片的尺寸
    self.ImageViewF = CGRectMake(x, y + padding, Iwidth - 2 * x, 200);
    
    CGSize textSize = [modelF.des boundingRectWithSize:CGSizeMake(self.ImageViewF.size.width , self.ImageViewF.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]                                                                             } context:nil].size;
    
//    文字描述的尺寸
    self.desF = CGRectMake(x,CGRectGetMaxY(self.ImageViewF) + padding, textSize.width, textSize.height + 4 * padding);
}


@end
