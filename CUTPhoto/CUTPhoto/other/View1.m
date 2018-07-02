//
//  View1.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/4/4.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "View1.h"

@implementation View1

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
        [self addGestureRecognizer:tap];
    }
    return self;
}



#pragma mark 手势
- (void)tapAction:(UITapGestureRecognizer*)tap{
    NSLog(@"又点击了view1");
}
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView* ll = [super hitTest:point withEvent:event];
    NSLog(@"view1 ll %@", ll);
    return ll;
}


- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    BOOL b = [super pointInside:point withEvent:event];
    NSLog(@"view1 b %d", b);
    return b;
}

- (NSString *)description
{
    return @"这是view1";
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"点击了view1");
}
@end
