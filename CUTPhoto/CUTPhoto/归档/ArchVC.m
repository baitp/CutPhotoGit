//
//  ArchVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/2.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ArchVC.h"
#import "Arch.h"

@interface ArchVC ()

@end

@implementation ArchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self makeButton:@"归档" tag:0];
    [self makeButton:@"解档" tag:1];
    // Do any additional setup after loading the view.
}

- (void)makeButton:(NSString*)title tag:(NSInteger)tag{
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100+tag*100, (kscreenWidth-200)/2.0, 35)];
    [btn setTitle:title forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:(UIControlEventTouchUpInside)];
    btn.tag = tag;
    [self.view addSubview:btn];
}

#pragma mark 点击事件
- (void)btnClicked:(UIButton*)button{
    NSString* path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
    NSString* target = [path stringByAppendingString:@"/arch"];
    if (button.tag == 0) {
        Arch* model = [[Arch alloc]init];
        model.name = @"贾某";
        model.sex = @"男";
        model.age = 30;
        [NSKeyedArchiver archiveRootObject:model toFile:target];
    }else if (button.tag == 1){
        Arch* mode = [NSKeyedUnarchiver unarchiveObjectWithFile:target];
        NSLog(@"name:%@,sex:%@,age:%ld",mode.name, mode.sex, mode.age);
    }
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
