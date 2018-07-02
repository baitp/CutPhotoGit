//
//  UIViewController+image.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "UIViewController+image.h"

@implementation UIViewController (image)

- (void)loadImage:(NSString*)imageName{
    UIImageView* iv = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    iv.frame = CGRectMake(10, 80, kscreenWidth-20, kscreenHeight-100);
    iv.contentMode = UIViewContentModeScaleToFill;
    [self.view addSubview:iv];
    iv.tag = 100;
}

- (void)setContentModel:(UIViewContentMode)model{
    UIImageView* iv = [self.view viewWithTag:100];
    iv.contentMode = model;
}

- (void)loadCode:(NSString*)code{
//    UITextView*
}

@end
