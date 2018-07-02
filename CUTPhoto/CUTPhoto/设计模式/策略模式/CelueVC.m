//
//  CelueVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "CelueVC.h"
#import "NormalJZ.h"
#import "BazheJZ.h"
#import "Man100JZ.h"
#import "Man200JZ.h"
#import "CLContext.h"

@interface CelueVC ()

@end

@implementation CelueVC
/**
 定义:定义了一些列的算法,这些算法都是完成了相同点工作,只是实现方式不同.可以以相同的方法调用所有的方法.减少了算法类与算法类之间的耦合度
 应用场景:商场结账,正常结账,8折,满100件10,满200减20
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"策略模式"];
    [self setContentModel:(UIViewContentModeScaleAspectFit)];
    CLContext* cl = [[CLContext alloc]init];
    [cl setJiezhang:[NormalJZ new]];
    cl.money = 200;
    [cl setJiezhang:[BazheJZ new]];
    cl.money = 200;
    [cl setJiezhang:[Man100JZ new]];
    cl.money = 200;
    [cl setJiezhang:[Man200JZ new]];
    cl.money = 200;
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
