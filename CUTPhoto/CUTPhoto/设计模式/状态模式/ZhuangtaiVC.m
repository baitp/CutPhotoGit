//
//  ZhuangtaiVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZhuangtaiVC.h"
#import "ZhunagtaiContext.h"

@interface ZhuangtaiVC ()

@end

@implementation ZhuangtaiVC
/**
 定义:将与特定的状态相关的行为局部化,并且将不同状态下的行为分割开来.
 应用场景:打印一天当中不同时刻该干什么事
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"状态模式"];
    ZhunagtaiContext* cont = [[ZhunagtaiContext alloc]init];
    cont.hour = 6;
    cont.hour = 10;
    cont.hour = 12;
    cont.hour = 15;
    cont.hour = 19;
    // Do any additional setup after loading the view.
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
