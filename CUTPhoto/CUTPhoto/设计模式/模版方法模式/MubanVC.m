//
//  MubanVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "MubanVC.h"
#import "TestPaperA.h"
#import "TestPaperB.h"

@interface MubanVC ()

@end

@implementation MubanVC
/**
 定义:把公共的部分抽出来,放到父类,把不同的部分分离出来,放到子类实现.-延迟实现
 应用场景:学生考试,考试题都是一样的,但是答案不一样.这样把相同部分抽出来放到父类,把不同的部分分离出来放到子类
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"模板方法.jpg"];
    
    TestPaperA* aa = [[TestPaperA alloc]initWithName:@"金庸"];
    [aa question1];
    [aa question2];
    [aa question3];
    [aa question4];
    [aa question5];
    
    TestPaperB* bb = [[TestPaperB alloc]initWithName:@"古龙"];
    [bb question1];
    [bb question2];
    [bb question3];
    [bb question4];
    [bb question5];
    
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
