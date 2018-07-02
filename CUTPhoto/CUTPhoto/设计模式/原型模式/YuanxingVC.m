//
//  YuanxingVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "YuanxingVC.h"
#import "Servce.h"
#import "Order.h"
#import "TMOrder.h"
#import "TBOrder.h"
#import "JDOrder.h"

@interface YuanxingVC ()

@end

@implementation YuanxingVC
/**
 需求:有几种类型的订单,天猫,京东,淘宝.要求打印订单的历史记录
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"189984-21176f24f4046ed8"];

    Servce* se = [[Servce alloc]init];
    TMOrder* tm = [TMOrder make:@"天猫" orderId:@"1234" channel:@"奥普"];
    [se addOrder:tm];
    [tm alter:@"惠普"];
    [se addOrder:tm];
    
    JDOrder* jd = [JDOrder make:@"京东" orderId:@"234" post:@"京东快递"];
    [se addOrder:jd];
    [jd alter:@"顺丰快递"];
    [se addOrder:jd];
    
    TBOrder* tb = [TBOrder make:@"淘宝" orderId:@"2356" price:134];
    [se addOrder:tb];
    [tb alter:@"345"];
    [se addOrder:tb];
    
    [se print];
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
