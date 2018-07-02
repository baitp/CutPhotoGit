//
//  XiangYuanVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "XiangYuanVC.h"
#import "FlowerFactory.h"

@interface XiangYuanVC ()

@end

@implementation XiangYuanVC
/**
 定义:相似的功能或者模块被大量的使用,造成大量的内存占用.包括两部分
 内部:条件固定,不会变的.
 外部:条件一直在变的
 应用场景:有三种颜色的花,创建大量的花
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"享元模式.jpg"];
    [self setContentModel:UIViewContentModeScaleToFill];
    FlowerFactory* ff = [[FlowerFactory alloc]init];
    NSMutableArray* arr = [NSMutableArray arrayWithCapacity:10];
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger type = arc4random()%3;
        Flower* f = [ff getFlower:type];
        [arr addObject:f];
    }
    for (Flower* f in arr) {
        NSLog(@"%@-%@", f.name, f.color);
    }
    Flower* flo = arr[3];
    flo.name = @"小兰花";
    flo.color = @"蓝色";
    for (Flower* f in arr) {
        NSLog(@"%@-%@", f.name, f.color);
    }
    //内存地址是一样的,所以如果要是使用的时候一定要注意修改了一个其他的也跟着修改了.使用的时候参考UITableViewCell的重用机制,在重用池中穿件固定数目的cell复用
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
