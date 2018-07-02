//
//  CanvasView.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/7.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "CanvasView.h"

@implementation CanvasView{
    CAShapeLayer* layer_;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        layer_ = [[CAShapeLayer alloc]init];
        layer_.lineCap = kCALineCapRound;
        layer_.lineJoin = kCALineJoinRound;
        layer_.borderWidth = 2;
        layer_.strokeColor = [UIColor redColor].CGColor;
        layer_.fillColor = [UIColor clearColor].CGColor;
        
        [self.layer addSublayer:layer_];
    }
    return self;
}

- (void)drawXuxian{
    layer_.lineDashPattern = @[@(5), @(2), @(2), @(5)];
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((kscreenWidth-100)*0.5, (self.frame.size.height-100)*0.5, 100, 100)];
    layer_.path = path.CGPath;
}

- (void)drawquxian2{
    UIBezierPath* path = [[UIBezierPath alloc]init];
    [path moveToPoint:CGPointMake(10, 20)];
    [path addQuadCurveToPoint:CGPointMake(300, 20) controlPoint:CGPointMake(100, 100)];
    layer_.path = path.CGPath;
}

- (void)drawquxian3{
    UIBezierPath* path = [[UIBezierPath alloc]init];
    [path moveToPoint:CGPointMake(10, 50)];
    [path addCurveToPoint:CGPointMake(400, 50) controlPoint1:CGPointMake(100, 130) controlPoint2:CGPointMake(200, 5)];
//    [path addQuadCurveToPoint:CGPointMake(300, 20) controlPoint:CGPointMake(100, 100)];
    layer_.path = path.CGPath;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
