//
//  BeiWangluVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "BeiWangluVC.h"
#import "GameRole.h"
#import "BeiwangluManager.h"

@interface BeiWangluVC ()

@end

@implementation BeiWangluVC
/**
 定义:在不破坏封装性的前提下,捕获一个对象内部的状态,并在该对象之外保存这个状态.这样以后就可以将该对象恢复到原先保存的状态.
 应用场景:玩游戏,角色死亡恢复原来的数据
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"备忘录模式"];
    GameRole* role = [[GameRole alloc]init];
    [role show];
    
    BeiwangluManager* manager = [[BeiwangluManager alloc]init];
    manager.bwl = [role saveState];
    
    [role fight];
    [role show];
    
    [role reset:manager.bwl];
    [role show];
    
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
