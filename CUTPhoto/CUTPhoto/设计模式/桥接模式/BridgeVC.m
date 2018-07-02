//
//  BridgeVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "BridgeVC.h"
#import "Phone.h"
#import "IPhone.h"
#import "HPhone.h"

@interface BridgeVC ()

@end

@implementation BridgeVC
/**
 定义:将抽象部分与实现部分分离,使他们都可以独立的变化
 应用场景:实现系统可能有多个角度的分类,每一种角度都会有各自的变化,那么就把这种多角度分离出来,让他们独自变化,减少他们之间的耦合
 需求:手机有多个品牌,每个手机都可以有好多种游戏.显示手机的信息.
 分析:手机品牌和手机游戏是两个角度,都可以独自变化
*/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"桥接模式"];
    Game* g0 = [[HYGame alloc]init];
    Game* g1 = [[WZRYGame alloc]init];
    
    Phone* p0 = [[IPhone alloc]init];
    p0.game = g0;
    Phone* p1 = [[HPhone alloc]init];
    p1.game = g1;
    
    [p0 playGame];
    [p1 playGame];
    
    
    
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
