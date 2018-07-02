//
//  JiandanFactoryVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "JiandanFactoryVC.h"
#import "UIViewController+image.h"
#import "SuanFaFactory.h"
#import "SuanFaProtocol.h"

@interface JiandanFactoryVC ()

@end

@implementation JiandanFactoryVC

/**
 需求:计算器,实现加减乘除,易扩展
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"20141023090558310"];
    id<SuanFaProtocol> op = [SuanFaFactory operation:@"/"];
    op.a = 40;
    op.b = 30;
    NSInteger result = op.operation;
    NSLog(@"结果是:%ld", result);
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
