//
//  RootVc.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/2.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "RootVc.h"
#import "ArchVC.h"
#import "FPSVC.h"
#import "DanliVC.h"
#import "JiandanFactoryVC.h"
#import "FactoryVC.h"
#import "YuanxingVC.h"
#import "BuilderVC.h"
#import "ShipeiqiVC.h"
#import "BridgeVC.h"
#import "ZhuangshiVC.h"
#import "WaiguanVC.h"
#import "ZuheVC.h"
#import "XiangYuanVC.h"
#import "ZhuangtaiVC.h"
#import "CelueVC.h"
#import "MinglingVC.h"
#import "MubanVC.h"
#import "ZerenlianVC.h"
#import "ZhongjiezheVC.h"
#import "BeiWangluVC.h"
#import "SortVC.h"
#import "BezelVC.h"

@interface RootVc ()

@end

@implementation RootVc{
    NSArray* classList_;
    NSArray* funcList_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"列表";
    
    classList_ = @[@"BezelVC", @"SortVC", @"BeiWangluVC", @"ZhongjiezheVC", @"ZerenlianVC", @"MubanVC", @"MinglingVC", @"CelueVC", @"ZhuangtaiVC", @"XiangYuanVC", @"ZuheVC", @"WaiguanVC", @"ZhuangshiVC", @"BridgeVC", @"ShipeiqiVC", @"BuilderVC", @"YuanxingVC", @"FactoryVC",@"JiandanFactoryVC", @"DanliVC",@"ArchVC", @"FPSVC"];
    funcList_ = @[@"贝塞尔曲线", @"排序算法", @"备忘录模式", @"中介者模式", @"责任链模式", @"模板方法模式", @"命令模式",@"策略模式", @"状态模式", @"享元模式", @"组合模式", @"外观模式", @"装饰模式", @"桥接模式", @"适配器模式", @"建造者模式", @"原型模式", @"工厂模式",@"简单工厂模式",@"单例模式",@"归档", @"FPS"];
    for (NSInteger i = 0; i < funcList_.count; i++) {
        NSString* title = [funcList_ objectAtIndex:i];
        [self makeButton:i title:title];
        
        
        
    }
    
}

- (void)makeButton:(NSInteger)i title:(NSString*)title{
    CGFloat left = (kscreenWidth-300)/3.0;
//    NSLog(@"%f", kscreenWidth);
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(i%2*left+left+i%2*150, 64+20+i/2*60, 150, 40)];
    [btn setTitle:title forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:(UIControlEventTouchUpInside)];
    btn.tag = i;
    btn.backgroundColor = [UIColor redColor];
    UIBezierPath* path = [UIBezierPath bezierPathWithRoundedRect:btn.bounds cornerRadius:3];
    CAShapeLayer* layer = [[CAShapeLayer alloc]init];
    layer.frame = btn.bounds;
    layer.path = path.CGPath;
    btn.layer.mask = layer;
    [self.view addSubview:btn];
}

#pragma mark 点击事件
- (void)btnClicked:(UIButton*)button{
    NSInteger tag = button.tag;
    NSString* className = [classList_ objectAtIndex:tag];
    Class cls = NSClassFromString(className);
    UIViewController* sd = [[cls alloc]init];
    sd.title = [funcList_ objectAtIndex:tag];
    [self.navigationController pushViewController:sd animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
