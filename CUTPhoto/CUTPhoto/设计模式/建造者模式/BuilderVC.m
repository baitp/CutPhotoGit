//
//  BuilderVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "BuilderVC.h"
#import "Director.h"


@interface BuilderVC ()

@end

@implementation BuilderVC
/**
 给一个人进行装扮,戴帽子,穿衣服,穿裤子,穿鞋子.可以有各种各样的装扮方式.但是都要经过上面四步
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"20164193907493.png.jpeg"];
    
    Builder1* b1 = [[Builder1 alloc]init];
    Builder2* b2 = [[Builder2 alloc]init];
    
    Person* p1 = [Director director:b1];
    [p1 show];
    Person* p2 = [Director director:b2];
    [p2 show];
    
    
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
