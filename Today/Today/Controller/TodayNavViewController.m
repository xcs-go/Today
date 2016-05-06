//
//  TodayNavViewController.m
//  Today
//
//  Created by 谢朝森 on 16/5/4.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "TodayNavViewController.h"
#import "ViewController.h"
@interface TodayNavViewController ()

@end

@implementation TodayNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:YES];
    if (self.childViewControllers.count > 1) {
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"分享" style:UIBarButtonItemStylePlain target:self action:@selector(sharedClick)];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sharedClick{
    NSLog(@"哈哈😄，你是sb");
}

- (void)backClick{
//    NSLog(@"哈哈😄，你是sb");
    [self popViewControllerAnimated:YES];
}
@end
