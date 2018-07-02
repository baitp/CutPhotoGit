//
//  BezView.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/7.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "BezView.h"

@implementation BezView{
    UIBezierPath* path_;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        path_ = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((frame.size.width-100)*0.5, 0, 100, 100)];
//        CAShapeLayer* shapelayer = [[CAShapeLayer alloc]init];
//        shapelayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
//        shapelayer.fillColor = nil;
//        shapelayer.lineCap = kCALineCapRound;
//        shapelayer.fillColor = [UIColor redColor].CGColor;
////        shapelayer.lineWidth =2;
//        shapelayer.path = path_.CGPath;
//        [self.layer addSublayer:shapelayer];
//
//
//
//        NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//        queue.maxConcurrentOperationCount = 5;
//        [queue addOperationWithBlock:^{
//        UIBezierPath* pp = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
//        for (NSInteger i = 0; i < 100000; i++) {
//
//                CAShapeLayer* ll = [[CAShapeLayer alloc]init];
//                ll.frame = CGRectMake(0, frame.size.height-100, 100, 100);
//                ll.fillColor = nil;
//                ll.lineCap = kCALineCapRound;
//                ll.fillColor = [UIColor redColor].CGColor;
//                ll.path = pp.CGPath;
//                [self.layer addSublayer:ll];
//        }
//        }];
    
    }
    return self;
}

//- (void)drawRect:(CGRect)rect{
//    [[UIColor redColor] setFill];
//    [path_ fill];
//
//    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//
//        UIBezierPath* pp = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, rect.size.height-100, 100, 100)];
//        [[UIColor redColor] setFill];
//        [pp fill];
//    });
//}


- (void)drawRect:(CGRect)rect {
//    [[UIColor redColor] setFill];
//    [path_ fill];
//    NSLog(@"%@", [NSThread currentThread]);
//    dispatch_sync(dispatch_get_global_queue(0, 0), ^{

//        for (NSInteger i = 0; i < 100000; i++) {
//            UIBezierPath* pp = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, rect.size.height-100, 100, 100)];
//            [[UIColor redColor] setFill];
//            [pp fill];
//            NSLog(@"%@", [NSThread currentThread]);
//        }
//    });
}


@end
