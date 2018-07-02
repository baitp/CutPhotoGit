//
//  ViewController.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/3/16.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ViewController.h"
#import "View1.h"
#import "View2.h"
#import "ArchVC.h"

@interface ViewController ()

@end

@implementation ViewController{
    UIImageView* imageView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    self.view.backgroundColor = [UIColor redColor];
    UIImage* image = [UIImage imageNamed:@"1.jpg"];
    CGFloat w = 200;
    CGFloat h = w* 0.63084f;
    imageView_ = [[UIImageView alloc]initWithFrame:CGRectMake(10, 60, w, h)];
    imageView_.layer.borderColor = [UIColor blueColor].CGColor;
    imageView_.layer.borderWidth = 1;
    imageView_.image = image;
    imageView_.backgroundColor = [UIColor grayColor];
    [self.view addSubview:imageView_];
    
    UIButton* button = [[UIButton alloc]initWithFrame:CGRectMake(w/8, CGRectGetMaxY(imageView_.frame)+10, w, 40)];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"裁剪" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(cut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    View1* v1 = [[View1 alloc]initWithFrame:CGRectMake(100, 300, 200, 200)];
    
    v1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:v1];
    View2* v2 = [[View2 alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    
    v2.backgroundColor = [UIColor yellowColor];
    [v1 addSubview:v2];
//     Do any additional setup after loading the view, typically from a nib.
}

- (void)makeButton{
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 60, 30)];
    [btn setTitle:@"归档" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

#pragma mark 点击事件
- (void)btnClicked:(UIButton*)button{
    ArchVC* vc = [[ArchVC alloc]init];
    
}

- (void)viewDidLayoutSubviews{
    
    UIAlertController* vc = [UIAlertController alertControllerWithTitle:@"https://blog.csdn.net/guxiao1201/article/details/50899136" message:@"cant " preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction* ac = [UIAlertAction actionWithTitle:@"好" style:(UIAlertActionStyleDefault) handler:nil];
    [vc addAction:ac];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"点击了 %ld", touches.count);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}



- (void)cut{
    UIImage* image = imageView_.image;
    CGFloat w = 0.8*image.size.width;
    CGFloat h = w* 0.63084f;
    CGRect rect = CGRectMake(image.size.width*0.1, (image.size.height-h)*0.5, w, h);
    imageView_.image = [UIImage imageWithCGImage:CGImageCreateWithImageInRect([image CGImage], rect)];
}


@end
