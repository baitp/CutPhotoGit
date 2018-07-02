//
//  IqiyiButton.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/13.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "IqiyiButton.h"

const static NSInteger animationDuration  = 1;

@implementation IqiyiButton{
    NSInteger a_;
    CAShapeLayer* leftLayer_;
    CAShapeLayer* rightLayer_;
    CAShapeLayer* circleLayer_;
    CAShapeLayer* trigonLayer_;;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        a_ = frame.size.width;
        _status = Pause;
        [self makeLeftLayer];
        [self makeRightLayer];
        [self makeCircleLayer];
        [self makeTrigonLayer];
    }
    return self;
}

#pragma mark 播放动画
- (void)playAnimation{
    [self leftLayerPathAnimation:CGPointMake(0.2*a_, 0.4*a_) endP:CGPointMake(0.2*a_, a_) key:nil];
    [self rightLayerPathAnimation:CGPointMake(0.8*a_, 0.8*a_) endP:CGPointMake(0.8*a_, -0.2*a_) key:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(animationDuration*0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self leftLayerPathAnimation:CGPointMake(0.2*a_, 0.2*a_) endP:CGPointMake(0.2*a_, 0.8*a_) key:@"leftPath"];
        [self rightLayerPathAnimation:CGPointMake(0.8*a_, 0.8*a_) endP:CGPointMake(0.8*a_, 0.2*a_) key:@"rightPath"];
    });
}

#pragma mark 暂停动画
- (void)pauseAnimation{
    [self trigonLayerAnimation:0 fromValue:1 keypath:@"trigonLayerAnimation"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(animationDuration*0.75 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self trigonLayerAnimation:0 fromValue:0 keypath:@""];//因为做完动画之后三角并不会消失,而是会留一个圆点,这句话目的就是消除圆点
    });
    [self leftLayerDisappear:0 toValue:1 key:@"leftLayerAppear"];
}
#pragma mark 各个动画
//左线path动画
- (void)leftLayerPathAnimation:(CGPoint)startP endP:(CGPoint)endP key:(NSString*)key{
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:startP];
    [path addLineToPoint:endP];
    leftLayer_.path = path.CGPath;
    [leftLayer_ addAnimation:[self pathAnimation:key] forKey:key];
}
//右线path动画
- (void)rightLayerPathAnimation:(CGPoint)startP endP:(CGPoint)endP key:(NSString*)key{
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:startP];
    [path addLineToPoint:endP];
    rightLayer_.path = path.CGPath;
    [rightLayer_ addAnimation:[self pathAnimation:key] forKey:key];
}

//左线消失或出现的strokeEnd动画
- (void)leftLayerDisappear:(NSInteger)fromValue toValue:(NSInteger)toValue key:(NSString*)key{
    CABasicAnimation* an = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    an.duration = animationDuration*0.25;
    an.fillMode = kCAFillModeForwards;
    an.removedOnCompletion = NO;
    an.fromValue = @(fromValue);
    an.toValue = @(toValue);
    an.delegate = self;
    [an setValue:key forKey:@"AnimationKey"];
    [leftLayer_ addAnimation:an forKey:key];
}

//右线消失或出现的strokeEnd动画
- (void)rightLayerDisappear:(NSInteger)fromValue toValue:(NSInteger)toValue key:(NSString*)key{
    CABasicAnimation* an1 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    an1.duration = animationDuration*0.25;
    an1.fillMode = kCAFillModeForwards;
    an1.removedOnCompletion = NO;
    an1.fromValue = @(fromValue);
    an1.toValue = @(toValue);
    an1.delegate = self;
    [an1 setValue:key forKey:@"AnimationKey"];
    [rightLayer_ addAnimation:an1 forKey:key];
}

//圆弧出现动画
- (void)circleAnimation_end:(NSInteger)toValue key:(NSString*)key{
    CABasicAnimation* an = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    an.duration = animationDuration*0.25;
    an.fillMode = kCAFillModeForwards;
    an.removedOnCompletion = NO;
    an.fromValue = @(0);
    an.toValue = @(toValue);
    an.delegate = self;
    [an setValue:key forKey:@"AnimationKey"];
    [circleLayer_ addAnimation:an forKey:key];
}
//原话消失动画
- (void)circleAnimation_start:(NSInteger)toValue key:(NSString*)key{
    CABasicAnimation* an = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
    an.duration = animationDuration*0.25;
    an.fillMode = kCAFillModeForwards;
    an.removedOnCompletion = NO;
    an.toValue = @(toValue);
    an.delegate = self;
    [an setValue:key forKey:@"AnimationKey"];
    [circleLayer_ addAnimation:an forKey:key];
    
}
//三角形消失或者出现的动画
- (void)trigonLayerAnimation:(NSInteger)toValue fromValue:(NSInteger)fromValue keypath:(NSString*)keyPath{
    CABasicAnimation* an1 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    an1.duration = animationDuration*0.75;
    an1.fillMode = kCAFillModeForwards;
    an1.removedOnCompletion = NO;
    an1.fromValue = @(fromValue);
    an1.delegate = self;
    an1.toValue = @(toValue);
    [an1 setValue:keyPath forKey:@"AnimationKey"];
    [trigonLayer_ addAnimation:an1 forKey:keyPath];
}



#pragma mark path动画
- (CABasicAnimation*)pathAnimation:(NSString*)key{
    CABasicAnimation* anima = [CABasicAnimation animationWithKeyPath:@"path"];
    anima.duration = animationDuration*0.25;
    anima.delegate = self;
    anima.removedOnCompletion = YES;
    anima.fillMode = kCAFillModeForwards;
    [anima setValue:key forKey:@"AnimationKey"];
    return anima;
}


#pragma mark 动画代理
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    CABasicAnimation * animation = (CABasicAnimation *)anim;
    NSString* key = [animation valueForKey:@"AnimationKey"];
    if (flag) {
        if ([key isEqualToString:@"leftPath"]) {
            [self trigonLayerAnimation:1 fromValue:0 keypath:nil];
        }else if ([key isEqualToString:@"rightPath"]){
            [self rightLayerDisappear:0 toValue:0 key:@"rightLayerDisappear"];
            [self circleAnimation_end:1 key:@"CircleStrokeEnd"];
        }else if ([key isEqualToString:@"rightLayerDisappear"]){
            [self circleAnimation_start:1 key:@"CircleStrokeStart"];
        }else if ([key isEqualToString:@"CircleStrokeStart"]){
            [self leftLayerDisappear:1 toValue:0 key:nil];
        }else if ([key isEqualToString:@"leftLayerAppear"]){
            [self circleAnimation_start:0 key:@"circleAnimation_start0"];
        }else if ([key isEqualToString:@"circleAnimation_start0"]){
            [self circleAnimation_end:0 key:@"circleAnimation_end0"];
            [self rightLayerDisappear:0 toValue:1 key:@"rightLayerAppear"];
        }else if ([key isEqualToString:@"circleAnimation_end0"]){
            [self leftLayerPathAnimation:CGPointMake(0.2*a_, 0.4*a_) endP:CGPointMake(0.2*a_, a_) key:nil];
            [self rightLayerPathAnimation:CGPointMake(0.8*a_, 0.8*a_) endP:CGPointMake(0.8*a_, -0.2*a_) key:nil];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(animationDuration*0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self leftLayerPathAnimation:CGPointMake(0.2*a_, 0) endP:CGPointMake(0.2*a_, a_) key:nil];
                [self rightLayerPathAnimation:CGPointMake(0.8*a_, a_) endP:CGPointMake(0.8*a_, 0) key:nil];
            });
        }
        
    }
}

#pragma mark 初始化界面
- (void)makeLeftLayer{
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.2*a_, 0)];
    [path addLineToPoint:CGPointMake(0.2*a_, a_)];
    leftLayer_ = [CAShapeLayer layer];
    leftLayer_.lineWidth = 10;
    leftLayer_.fillColor = [UIColor clearColor].CGColor;
    leftLayer_.strokeColor = [UIColor greenColor].CGColor;
    leftLayer_.lineCap = kCALineCapRound;
    leftLayer_.lineJoin = kCALineJoinRound;
    leftLayer_.path = path.CGPath;
    [self.layer addSublayer:leftLayer_];
}

- (void)makeRightLayer{
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.8*a_, a_)];
    [path addLineToPoint:CGPointMake(0.8*a_, 0)];
    rightLayer_ = [CAShapeLayer layer];
    rightLayer_.lineWidth = 10;
    rightLayer_.fillColor = [UIColor clearColor].CGColor;
    rightLayer_.strokeColor = [UIColor greenColor].CGColor;
    rightLayer_.lineCap = kCALineCapRound;
    rightLayer_.lineJoin = kCALineJoinRound;
    rightLayer_.path = path.CGPath;
    [self.layer addSublayer:rightLayer_];
    
}

- (void)makeCircleLayer{
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(0.5*a_, 0.8*a_) radius:0.3*a_ startAngle:0 endAngle:M_PI clockwise:YES];
    circleLayer_ = [CAShapeLayer layer];
    circleLayer_.lineWidth = 10;
    circleLayer_.fillColor = [UIColor clearColor].CGColor;
    circleLayer_.strokeColor = [UIColor greenColor].CGColor;
    circleLayer_.lineCap = kCALineCapRound;
    circleLayer_.lineJoin = kCALineJoinRound;
    circleLayer_.path = path.CGPath;
    [self.layer addSublayer:circleLayer_];
    circleLayer_.strokeEnd = 0;
}

- (void)makeTrigonLayer{
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.2*a_, 0.2*a_)];
    [path addLineToPoint:CGPointMake(0.2*a_, 0)];
    [path addLineToPoint:CGPointMake(a_, 0.5*a_)];
    [path addLineToPoint:CGPointMake(0.2*a_, a_)];
    [path addLineToPoint:CGPointMake(0.2*a_, 0.2*a_)];
    trigonLayer_ = [CAShapeLayer layer];
    trigonLayer_.lineWidth = 10;
    trigonLayer_.fillColor = [UIColor clearColor].CGColor;
    trigonLayer_.strokeColor = [UIColor redColor].CGColor;
    trigonLayer_.lineCap = kCALineCapRound;
    trigonLayer_.lineJoin = kCALineJoinRound;
    trigonLayer_.path = path.CGPath;
    trigonLayer_.strokeEnd = 0;
    [self.layer addSublayer:trigonLayer_];
    
}

#pragma mark set方法
- (void)setStatus:(PlayStatus)status{
    _status = status;
    if (status == Play) {
        [self playAnimation];
    }else{
        [self pauseAnimation];
    }
}

@end
