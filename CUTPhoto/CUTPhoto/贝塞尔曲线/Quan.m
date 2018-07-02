//
//  Quan.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/8.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Quan.h"


@implementation Quan{
}

- (instancetype)initWithFrame:(CGRect)frame targetPoint:(CGPoint)point
{
    self = [super init];
    if (self) {
        self.point = point;
        UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.frame = frame;
        self.lineWidth = 1.5;
        self.strokeColor = [UIColor lightGrayColor].CGColor;
        self.fillColor = [UIColor clearColor].CGColor;
        self.path = path.CGPath;
    }
    return self;
}


- (Quan*)clone{
    return [[Quan alloc]initWithFrame:self.frame targetPoint:self.point];
}

- (void)animation{
    CAAnimationGroup* group = [CAAnimationGroup animation];
    group.delegate = self;
    CABasicAnimation *anim = [CABasicAnimation animation];
    anim.keyPath = @"position";
    anim.toValue = [NSValue valueWithCGPoint:self.point];
    
    CABasicAnimation* an2 = [CABasicAnimation animation];
    an2.keyPath = @"transform.scale";
    an2.toValue = @(3.0);
    
    group.animations = @[anim, an2];
    group.duration = 2;
    group.removedOnCompletion = YES;
    group.fillMode = kCAFillModeForwards;
    //    添加动画
    [self addAnimation:group forKey:nil];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    if (flag) {
        [self setupEmitter];
//        [self removeFromSuperlayer];
    }
}

-(void)setupEmitter{
    
    // 1.创建发射器
    CAEmitterLayer *emitter = [[CAEmitterLayer alloc]init];
    
    // 2.设置发射器的位置
    emitter.emitterPosition = self.point;
    
    // 3.开启三维效果--可以关闭三维效果看看
    emitter.preservesDepth = YES;
    
    // 4.创建粒子, 并且设置粒子相关的属性
    // 4.1.创建粒子Cell
    NSMutableArray* arr = [NSMutableArray arrayWithCapacity:10];
    for (NSInteger i = 0; i < 10; i++) {
        CAEmitterCell *cell = [[CAEmitterCell alloc]init];
        
        // 4.2.设置粒子速度
        cell.velocity = 300;//速度越大可见的范围越大
        //速度范围波动50到250
        cell.velocityRange = 0;
        
        // 4.3.设置粒子的大小
        //一般我们的粒子大小就是图片大小， 我们一般做个缩放
        cell.scale = 0.8;
        
        //粒子大小范围: 0.4 - 1 倍大
        cell.scaleRange = 0.8;
        
        // 4.4.设置粒子方向
        //这个是设置经度，就是竖直方向 --具体看我们下面图片讲解
        //这个角度是逆时针的，所以我们的方向要么是 (2/3 π)， 要么是 (-π)
        cell.emissionLongitude = -M_PI_2;
        cell.emissionRange = M_PI_2 *2;
        
        // 4.5.设置粒子的存活时间
        cell.lifetime = 0.1;
        cell.lifetimeRange = 1;
        // 4.6.设置粒子旋转
        cell.spin = M_PI_2/2;
        cell.spinRange = M_PI_2*2;
        // 4.6.设置粒子每秒弹出的个数
        cell.birthRate = 30;
        // 4.7.设置粒子展示的图片 --这个必须要设置为CGImage
        cell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"dot"].CGImage);
        [arr addObject:cell];
    }
    
    // 5.将粒子设置到发射器中--这个是要放个数组进去
    emitter.emitterCells = arr;
    // 6.将发射器的layer添加到父layer中
    [self.superlayer addSublayer:emitter];
    
    [self performSelector:@selector(removeLayer:) withObject:emitter afterDelay:0.5];
}

- (void)removeLayer:(CAEmitterLayer*)layer{
    [layer removeFromSuperlayer];
}

@end
