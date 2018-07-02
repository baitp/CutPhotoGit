//
//  MinglingVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "MinglingVC.h"
#import "CommondReciver.h"

@interface MinglingVC ()

@end

@implementation MinglingVC
/**
 定义:将一个请求封装成一个对象,从而使你可以用不同的请求对客户进行参数化,对请求排队或记录请求日志,一级支持可撤销操作
 角色:客户端, 命令接收者, 命令, 命令执行者
 应用场景:去烧烤店吃烧烤,客户叫来服务员.服务员记录要吃什么,然后让烧烤师傅去考.这中间可以取消某些烧烤
 分析:
 客户端,顾客
 命令接收者,服务员
 命令,烧烤
 命令执行者,烤肉师傅
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"命令模式"];
    [self setContentModel:(UIViewContentModeScaleAspectFit)];
    CommondReciver* cr = [[CommondReciver alloc]init];
    [cr kao:@"鸡翅" count:2];
    [cr kao:@"鸡心" count:2];
    [cr kao:@"肉串" count:2];
    [cr bukao:@"鸡翅"];
    [cr kao:@"鸡翅" count:5];
    [cr kao:@"面筋" count:2];
    [cr exe];
    [cr bukao:@"鸡翅"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
