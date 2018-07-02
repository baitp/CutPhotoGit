//
//  ShipeiqiVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ShipeiqiVC.h"
#import "Player.h"
#import "ForwardPlayer.h"
#import "GuardPlayer.h"
#import "TransformPlayer.h"

@implementation ShipeiqiVC

/**
 使用场景:需要的东西就在眼前,却无法使用,而短时间却无法改造它,所以要想办法适配它
 需求:姚明去nba打球,全队球员都能听懂英语,但是姚明听不懂.短时间内不可能让他学英语.所以找一个翻译给他,充当适配器原则
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"适配器.jpeg"];
    
    Player* p0 = [[ForwardPlayer alloc]init];
    p0.name = @"詹姆斯";
    Player* p1 = [[GuardPlayer alloc]init];
    p1.name = @"奥尼尔";
    Player* p2 = [[TransformPlayer alloc]init];
    
    
    [p0 attack];
    [p1 attack];
    [p2 attack];
    
    [p0 defense];
    [p1 defense];
    [p2 defense];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
