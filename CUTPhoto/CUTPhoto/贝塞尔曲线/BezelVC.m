//
//  BezelVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/6.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "BezelVC.h"
#import "BezView.h"
#import "CanvasView.h"
#import "UIView+YSTransform.h"
#import "An1VC.h"

@interface BezelVC (){
    CanvasView* vv_;
    CAShapeLayer* trigonLayer_;
}

@end

@implementation BezelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    vv_ = [[CanvasView alloc]initWithFrame:CGRectMake(0, 150, kscreenWidth, 300)];
    [self.view addSubview:vv_];
    [self makeButton];
    [self makeButton1];
    [self makeButton2];
    [self makeButton3];
    [self makeTrigonLayer];
    [self makeLine];
}


- (void)makeLine{
    NSInteger a = 50;
    UIBezierPath* path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 50, 50)];
//    [path moveToPoint:CGPointMake(0, 0)];
//    [path addLineToPoint:CGPointMake(a, a)];
    CAShapeLayer* layer = [CAShapeLayer layer];
    layer.frame = CGRectMake(100, 400, 50, 50);
    layer.lineWidth = 10;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.lineCap = kCALineCapRound;
    layer.lineJoin = kCALineJoinRound;
    layer.path = path.CGPath;
    //    trigonLayer_.strokeEnd = 0;
    [self.view.layer addSublayer:layer];
    //    [self trigonLayerAnimation:1 fromValue:0 keypath:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CABasicAnimation* an1 = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
        an1.duration = 1;
        an1.fillMode = kCAFillModeForwards;
        //    an1.autoreverses = YES;
        an1.removedOnCompletion = NO;
        an1.fromValue = @0;
        an1.toValue = @1;
        [layer addAnimation:an1 forKey:nil];
    });
}

- (void)makeTrigonLayer{
    NSInteger a_ = 50;
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.2*a_, 0.2*a_)];
    [path addLineToPoint:CGPointMake(0.2*a_, 0)];
    [path addLineToPoint:CGPointMake(a_, 0.5*a_)];
    [path addLineToPoint:CGPointMake(0.2*a_, a_)];
    [path addLineToPoint:CGPointMake(0.2*a_, 0.2*a_)];
    trigonLayer_ = [CAShapeLayer layer];
    trigonLayer_.frame = CGRectMake(10, 400, 50, 50);
    trigonLayer_.lineWidth = 10;
    trigonLayer_.fillColor = [UIColor clearColor].CGColor;
    trigonLayer_.strokeColor = [UIColor redColor].CGColor;
    trigonLayer_.lineCap = kCALineCapRound;
    trigonLayer_.lineJoin = kCALineJoinRound;
    trigonLayer_.path = path.CGPath;
//    trigonLayer_.strokeEnd = 0;
    [self.view.layer addSublayer:trigonLayer_];
//    [self trigonLayerAnimation:1 fromValue:0 keypath:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self trigonLayerAnimation:0 fromValue:1 keypath:nil];
    });

}

- (void)trigonLayerAnimation:(CGFloat)toValue fromValue:(CGFloat)fromValue keypath:(NSString*)keyPath{
    CABasicAnimation* an1 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    an1.duration = 1;
    an1.fillMode = kCAFillModeForwards;
//    an1.autoreverses = YES;
    an1.removedOnCompletion = NO;
    an1.fromValue = [NSNumber numberWithFloat:fromValue];
    an1.toValue = [NSNumber numberWithFloat:toValue];
    [an1 setValue:keyPath forKey:@"AnimationKey"];
    [trigonLayer_ addAnimation:an1 forKey:keyPath];
}


- (void)makeButton{
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(10, 80, 80, 50)];
    [btn setTitle:@"虚线" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

#pragma mark 点击事件
- (void)btnClicked:(UIButton*)button{
    [vv_ drawXuxian];
}

- (void)makeButton1{
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 80, 80, 50)];
    [btn setTitle:@"二次曲线" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked1:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

#pragma mark 点击事件
- (void)btnClicked1:(UIButton*)button{
    [vv_ drawquxian2];
}




- (void)makeButton2{
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(200, 80, 80, 50)];
    [btn setTitle:@"三次曲线" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked2:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

#pragma mark 点击事件
- (void)btnClicked2:(UIButton*)button{
    [vv_ drawquxian3];
}

- (void)makeButton3{
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(300, 80, 80, 50)];
    [btn setTitle:@"动画" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked3:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

#pragma mark 点击事件
- (void)btnClicked3:(UIButton*)button{
    [self.navigationController pushViewController:[An1VC new] animated:YES];
}


//- (void)viewDidAppear:(BOOL)animated{
//
//    BezView* vv = [[BezView alloc]initWithFrame:CGRectMake(0, 100, kscreenWidth, 400)];
//    vv.tag = 10;
//    [self.view addSubview:vv];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"释放了");
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
