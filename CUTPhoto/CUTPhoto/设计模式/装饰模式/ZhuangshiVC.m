//
//  ZhuangshiVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZhuangshiVC.h"
#import "Dayi.h"
#import "Maoyi.h"
#import "Neiyi.h"
#import "Tixu.h"
#import "Zhuangshi.h"
#import "ZSPerson.h"
#import "Component.h"

@interface ZhuangshiVC ()

@end

@implementation ZhuangshiVC
/**
 定义:动态的给对象添加一些额外的职责,就增加新功能来说,装饰模式比增加子类更加灵活
 应用场景:给一个人穿衣服,先传内衣再穿毛衣,再穿外套,再穿大衣.是有顺序的.等于是用衣服装饰人
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"装饰模式.jpeg"];
    ZSPerson* person = [[ZSPerson alloc]initWithName:@"金泽"];
    Tixu* t = [[Tixu alloc]init];
    Maoyi* m = [[Maoyi alloc]init];
    Neiyi* n = [[Neiyi alloc]init];
    Dayi* d = [[Dayi alloc]init];
    
    [n operation:person];
    [m operation:n];
    [t operation:m];
    [d operation:t];
    [d show];
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
