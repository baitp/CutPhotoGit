//
//  DanliVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "DanliVC.h"
#import "DanliModel.h"

@interface DanliVC ()

@end

@implementation DanliVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"1511430715105859"];
    DanliModel* model = [DanliModel getModel];
    [self cc];
    [self cc];
    [self cc];
    [self cc];
    [self cc];
    // Do any additional setup after loading the view.
}

- (void)cc{
    //static 标记的内存不会被释放存在静态区,直到程序结束才会释放
    static int i = 0;
    i++;
    NSLog(@"%d", i);
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
