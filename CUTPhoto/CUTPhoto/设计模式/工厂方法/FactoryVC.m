//
//  FactoryVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "FactoryVC.h"
#import "StudentFactory.h"
#import "WorkerFactory.h"
#import "Helper.h"

@interface FactoryVC ()

@end

@implementation FactoryVC
/**
 需求:帮助孤寡老人做饭,洗衣,扫地.有可能是学生或者是工人,或其他人
 
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"1514254085644528.jpg"];
    
    Helper* s = [StudentFactory createHelper];
    [s xiyi];
    [s zuofan];
    [s dasao];
    
    Helper* w = [WorkerFactory createHelper];
    [w xiyi];
    [w zuofan];
    [w dasao];
    
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
