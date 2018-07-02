//
//  ZerenlianVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZerenlianVC.h"
#import "ZRZuzhang.h"
#import "ZRXiangmuJingli.h"
#import "ZRZongjingli.h"
#import "ZRCeo.h"
#import "ZRRequest.h"

@interface ZerenlianVC ()

@end

@implementation ZerenlianVC
/**
 定义:使多个对象都有机会处理请求,从而避免请求的发送者和接受者之间的耦合,将这个对象连城一条链,并沿着这条链传递该请求,直到有一个对象处理他为止.
 与状态模式比较:责任链模式更加的灵活,责任链的下一级是在客户端指定的,比较灵活.而状态模式的下一级是在每个状态类中写死的
 应用场景:公司员工请假,请假的类别不同批准人的级别不同.比如组长能批级别为1的假,项目经理能批级别为2的假.
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadImage:@"责任链模式.jpg"];
    
    ZRZuzhang* zz = [[ZRZuzhang alloc] initWithName:@"金泽"];
    ZRXiangmuJingli* xmjl = [[ZRXiangmuJingli alloc] initWithName:@"方木"];
    ZRZongjingli* zjl = [[ZRZongjingli alloc] initWithName:@"王建立"];
    ZRCeo* ceo = [[ZRCeo alloc]initWithName:@"马云"];
    [zz setUpper:xmjl];
    [xmjl setUpper:zjl];
    [zjl setUpper:ceo];
    
    ZRRequest* request1 = [[ZRRequest alloc]init];
    request1.level = 1;
    request1.desc = @"请假条";
    [zz handleAction:request1];
    
    ZRRequest* request2 = [[ZRRequest alloc]init];
    request2.level = 2;
    request2.desc = @"请假条";
    [zz handleAction:request2];
    
    ZRRequest* request3 = [[ZRRequest alloc]init];
    request3.level = 3;
    request3.desc = @"请假条";
    [zz handleAction:request3];
    
    ZRRequest* request4 = [[ZRRequest alloc]init];
    request4.level = 4;
    request4.desc = @"请假条";
    [zz handleAction:request4];
    
    
    
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
