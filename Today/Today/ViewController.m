//
//  ViewController.m
//  Today
//
//  Created by 谢朝森 on 16/5/4.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "ViewController.h"
#import "TodayController.h"
#import "AFNetworking.h"
#import "MJExtension.h"
#import "TodayDateModel.h"
#import "UIImageView+WebCache.h"


@interface ViewController ()

/**
 *  模型对象
 */
//@property(nonatomic, strong)TodayDateModel* todayModel;

/**
 *  模型数组，每一个元素都是一个TodayDateModel模型。
 */
@property(nonatomic, strong)NSMutableArray* todayModelArray;


@end

@implementation ViewController

/**
 *  懒加载
 */
- (NSMutableArray *)todayModelArray{
    if (!_todayModelArray) {
        self.todayModelArray = [NSMutableArray array];
    }
    return _todayModelArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"历史上的今天" style:UIBarButtonItemStylePlain target:self action:NULL];
    
//    加载数据
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"key"] = @"68582dad2f97d117c267f6716eaf68d5";
    parameters[@"v"] = @"1.0";
    parameters[@"month"] = @"5";
    parameters[@"day"] = @"4";
    AFHTTPRequestOperationManager *mar = [[AFHTTPRequestOperationManager alloc] init];
//    发送请求
    [mar POST:@"http://api.juheapi.com/japi/toh" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"请求成功----%@",responseObject[@"result"]);
//        数组中的每一个元素都是一个字典，整个数组是一个字典数组
        NSMutableArray *modelArray = responseObject[@"result"];
//        NSLog(@"modelArray----%@",modelArray[0]);
        NSMutableArray *array = [NSMutableArray array];
       array = [TodayDateModel mj_objectArrayWithKeyValuesArray:modelArray];
        
//        遍历数组
//        }
        NSMutableArray *tModelArray = [NSMutableArray array];
        for (TodayDateModel *model in array) {
//            NSLog(@"model----%@",model);
            
            [tModelArray addObject:model];
        }
        self.todayModelArray = tModelArray;
//        刷新表格数据
        [self.tableView reloadData];

//        NSLog(@"----%@-----%zd",self.todayModelArray[0],self.todayModelArray.count);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求失败－－－%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    NSLog(@"self.todayModelArray.count----%zd",self.todayModelArray.count);
    return self.todayModelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
//    取出数据模型
    TodayDateModel *model = self.todayModelArray[indexPath.row];
    NSURL *url = [NSURL URLWithString:model.pic];
    [cell.imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"iTunesArtwork"]];
    cell.textLabel.text = model.des;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    TodayController *vc = [[TodayController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
@end
