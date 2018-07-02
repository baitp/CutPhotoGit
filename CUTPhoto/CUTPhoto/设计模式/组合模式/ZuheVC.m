//
//  ZuheVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZuheVC.h"
#import "SubCompany.h"
#import "LeafCompany.h"

@interface ZuheVC ()

@end

@implementation ZuheVC
/**
 定义:将对象组合成树形结构以表示"部分-整体"的层次结构.组合模式使得用户对单个对象和组合对象的使用具有一致性.
 应用场景:某大公司有许多部门和许多分公司分公司下还有许多部门和子公司
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage:@"组合模式.jpg"];
    [self setContentModel:UIViewContentModeScaleToFill];
    
    SubCompany* com = [[SubCompany alloc]initWithName:@"小土科技总公司" superName:nil];
    [com addDepartment:[[LeafCompany alloc]initWithName:@"财务部" superName:@"小土科技总公司"]];
    [com addDepartment:[[LeafCompany alloc]initWithName:@"人事部" superName:@"小土科技总公司"]];
    SubCompany* com1 = [[SubCompany alloc]initWithName:@"廊坊小土科技分公司" superName:@"小土科技总公司"];
    [com1 addDepartment:[[LeafCompany alloc]initWithName:@"财务部" superName:@"廊坊小土科技分公司"]];
    [com1 addDepartment:[[LeafCompany alloc]initWithName:@"销售部" superName:@"廊坊小土科技分公司"]];
    [com addDepartment:com1];
    
    SubCompany* com2 = [[SubCompany alloc]initWithName:@"永清小土科技分公司" superName:@"廊坊小土科技分公司"];
    [com2 addDepartment:[[LeafCompany alloc]initWithName:@"开发部" superName:@"永清小土科技分公司"]];
    [com1 addDepartment:com2];
    
    [com show];

    // Do any additional setup after loading the view.
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
