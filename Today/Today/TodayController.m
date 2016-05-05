//
//  TodayController.m
//  Today
//
//  Created by 谢朝森 on 16/5/4.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "TodayController.h"

@interface TodayController ()

/**
 *  显示图片
 */
@property(nonatomic, weak)UIImageView * ImageView;

/**
 *  显示描述内容
 */
@property(nonatomic, weak)UILabel * text;


@end

@implementation TodayController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor redColor];
}

- (void)setModel:(TodayDateModel *)model{
    _model = model;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
