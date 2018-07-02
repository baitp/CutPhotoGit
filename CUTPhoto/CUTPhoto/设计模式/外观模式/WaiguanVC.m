//
//  WaiguanVC.m
//  CUTPhoto
//
//  Created by 白天鹏 on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "WaiguanVC.h"
#import "Seller.h"

@interface WaiguanVC ()

@end

@implementation WaiguanVC
/**
 定义:为子系统中的一组接口提供一个统一的接口.外观模式提供了一个更高级层次的接口,这个接口使得这一子系统更加容易使用
 需求:买车流程
 财务部门管理：现金付款、申请贷款、审核贷款、放款等业务
 销售部门管理：车辆调配、配件、赠品等业务
 售后服务部门管理：售前服务（贴膜、装配件、洗车、上牌等服务）和售后服务（维修、保养等）
 对于买车的车主来说,没必要知道这个流程.只要告诉销售员是贷款还是全款.其余的都不用关心.这个销售就是更高层次的一个接口
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"外观模式"];
    Seller* ss = [[Seller alloc]init];
    [ss quankuanPay];
    [ss daikuanPay:200000];
    [ss daikuanPay:1222];
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
