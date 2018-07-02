//
//  ZhongjiezheVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZhongjiezheVC.h"
#import "SellPeople.h"
#import "Buyer.h"

@interface ZhongjiezheVC ()

@end

@implementation ZhongjiezheVC
/**
 定义:用一个中介对象来封装一系列的对象交互.中介者使各个对象不需要显式的相互引用,从而使其耦合松散,而且可以独立地改变他们之间的交互
 缺点:中介者类会非常复杂
 应用场景:买房者和卖房者如果想交易需要通过中介,因为如果买房者和卖房者之间直接联系会非常复杂.
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"中介者模式.JPEG"];
    KeHu* k1 = [[KeHu alloc]init];
    k1.name = @"宋江";
    k1.housePrice = 1000000;
    k1.ownMoney = 23000000000;
    [k1 sellHouse];
    [k1 buyHouse];
    
    KeHu* k2 = [[KeHu alloc]init];
    k2.name = @"卢俊义";
    k2.housePrice = 2000000;
    k2.ownMoney = 23000001000;
    [k2 sellHouse];
    [k2 buyHouse];
    
    KeHu* k3 = [[KeHu alloc]init];
    k3.name = @"武松";
    k3.housePrice = 30000000000000000;
    k3.ownMoney = 25000001000;
    [k3 sellHouse];
    [k3 buyHouse];
    
    SellPeople* ss = [[SellPeople alloc]init];
    ss.name = @"李逵";
    ss.housePrice = 2345672;
    [ss sellHouse];
    
    Buyer* bb = [[Buyer alloc]init];
    bb.name = @"林冲";
    bb.ownMoney = 23443234234;
    [bb buyHouse];
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
