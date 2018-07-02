//
//  An1VC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/8.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "An1VC.h"
#import "UIView+YSTransform.h"
#import "Quan.h"
#import "JindutiaoView.h"
#import "IqiyiButton.h"

@interface An1VC ()

@property (nonatomic, strong) NSTimer* timer;

@end

@implementation An1VC{
    NSInteger flg_;
    CAShapeLayer* roundLayer_;
    CADisplayLink* link_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:[self makeRightButton]];
    self.view.backgroundColor = [UIColor whiteColor];
    [self an1];
//
    Quan* qq = [[Quan alloc]initWithFrame:CGRectMake(100, 400, 10, 10) targetPoint:CGPointMake(kscreenWidth*0.5, 255)];
    [self.view.layer addSublayer:qq];
//    [qq animation];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    [self jindutiao];
    [self iQiYi];
}

#pragma mark 爱奇艺按钮动画
- (void)iQiYi{
    IqiyiButton* button = [[IqiyiButton alloc]initWithFrame:CGRectMake((kscreenWidth-50)*0.5, 650, 50, 50)];
    [button addTarget:self action:@selector(clickiqy:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clickiqy:(IqiyiButton*)button{
    if (button.status == Play) {
        button.status = Pause;
    }else{
        button.status = Play;
    }
}

- (UIButton*)makeRightButton{
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 60, 40)];
    [btn setTitle:@"返回" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnBackClicked:) forControlEvents:(UIControlEventTouchUpInside)];
    return btn;
}

#pragma mark 返回事件
- (void)btnBackClicked:(UIButton*)button{
    [link_ invalidate];
    link_ = nil;
    [self.timer invalidate];
    _timer = nil;
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark 进度条
- (void)jindutiao{
    JindutiaoView* vv = [[JindutiaoView alloc]initWithFrame:CGRectMake(0, 450, kscreenWidth, 150)];
    [self.view.layer addSublayer:vv];
}

#pragma mark 气泡破灭动画
- (NSTimer*)timer{
    if (!_timer) {
        _timer = [NSTimer timerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
            Quan* qq = [[Quan alloc]initWithFrame:CGRectMake(100, 400, 10, 10) targetPoint:CGPointMake(kscreenWidth*0.5, 255)];
            [self.view.layer addSublayer:qq];
            [qq animation];
        }];
    }
    return _timer;
}

- (void)an1{
    UIBezierPath* path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake((kscreenWidth-200)*0.5, 150, 200, 100) cornerRadius:50];
    roundLayer_ = [[CAShapeLayer alloc]init];
    roundLayer_.lineWidth = 5;
    roundLayer_.strokeColor = [UIColor grayColor].CGColor;
    roundLayer_.lineDashPattern = @[@(10), @(4), @(5), @(5), @(15), @(6)];
    roundLayer_.path = path.CGPath;
    roundLayer_.strokeStart = 0;
    roundLayer_.strokeEnd = 1;
    roundLayer_.fillColor = [UIColor whiteColor].CGColor;
    [self.view.layer addSublayer:roundLayer_];
    link_ = [CADisplayLink displayLinkWithTarget:self selector:@selector(round)];
    [link_ addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)round{
    roundLayer_.lineDashPhase += 3;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark 点击动画
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (flg_ == 0) {
        [self.view YSTransform_circleColor_toColor:[UIColor redColor] Duration:1 StartPoint:CGPointMake(0, 80)];
    }else if (flg_ == 1){
        [self.view YSTransform_circleColor_toColor:[UIColor orangeColor] Duration:1 StartPoint:CGPointMake(0, 80)];
//        [self.view YSTransForm_beginZoom_max:3 min:0.5];
    }else if (flg_ == 2){
        [self.view YSTransform_circleColor_toColor:[UIColor yellowColor] Duration:1 StartPoint:CGPointMake(kscreenWidth, kscreenHeight-20)];
    }else if (flg_ == 3){
        [self.view YSTransform_circleImage_toImage:[UIImage imageNamed:@"timg-2.jpeg"] Duration:1 StartPoint:CGPointMake(kscreenWidth, kscreenHeight-20)];
    }else if (flg_ == 4){
        [self.view YSTransform_circleImage_toImage:[UIImage imageNamed:@"timg.jpeg"] Duration:1 StartPoint:CGPointMake(0, 80)];
    }
    if (flg_ >= 4) {
        flg_ = 0;
    }else{
        ++flg_;
    }
}

- (void)dealloc
{
    [link_ invalidate];
    NSLog(@"动画页面释放了");
}
@end
