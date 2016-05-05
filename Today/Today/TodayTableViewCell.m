//
//  TodayTableViewCell.m
//  Today
//
//  Created by 谢朝森 on 16/5/5.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "TodayTableViewCell.h"
#import "UIImageView+WebCache.h"


@interface TodayTableViewCell ()

/**
 *  图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

/**
 *  内容描述
 */
@property (weak, nonatomic) IBOutlet UILabel *des;

@end

@implementation TodayTableViewCell

+ (TodayTableViewCell *)tableViewCell{
    return [[NSBundle mainBundle] loadNibNamed:@"TodayTableViewCell" owner:nil options:nil].lastObject;
}

/**
 *  设置模型数据
 */
- (void)setModel:(TodayDateModel *)model{
    _model = model;
    NSURL *url = [NSURL URLWithString:model.pic];
    [self.ImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"iTunesArtwork"]];
    
    self.des.text = model.des;
}

- (void)awakeFromNib {
    
//    设置相关的数据
   
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
