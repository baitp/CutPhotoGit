//
//  SortVC.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/30.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "SortVC.h"

@interface SortVC ()

@end

@implementation SortVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSMutableArray* arr = [NSMutableArray arrayWithObjects:@8,@3,@4,@2,@11,@6,@1,@9,@7,@5,@10, nil];
    [self kuaisu:arr left:0 right:arr.count-1];
    NSLog(@"快速排序之后:%@", arr);
    [self maopao];
    [self suanze];
    [self charu];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)maopao{
    NSMutableArray* arr = [NSMutableArray arrayWithObjects:@8,@3,@4,@2,@11,@6,@1,@9,@7,@5,@10, nil];
    NSLog(@"冒泡排序之前:%@", arr);
    for (NSInteger i = 0; i < arr.count; i++) {
        for (NSInteger j = 0; j < arr.count-1-i; j++) {
            if ([arr[j] integerValue] > [arr[j+1] integerValue]) {
                NSNumber* temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
    NSLog(@"冒泡排序之后:%@", arr);
}

- (void)suanze{
    NSMutableArray* arr = [NSMutableArray arrayWithObjects:@8,@3,@4,@2,@11,@6,@1,@9,@7,@5,@10, nil];
    NSLog(@"选择排序之前:%@", arr);
    for (NSInteger i = 0; i < arr.count; i++) {
        for (NSInteger j = i+1; j < arr.count; j++) {
            if ([arr[i] integerValue] > [arr[j] integerValue]) {
                NSNumber* temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    NSLog(@"选择排序之后:%@", arr);
}

- (void)charu2{
    NSMutableArray* arr = [NSMutableArray arrayWithObjects:@8,@3,@4,@2,@11,@6,@1,@9,@7,@5,@10, nil];
    NSLog(@"插入排序之前:%@", arr);
    for (NSInteger i = 1; i < arr.count; i++) {
        NSInteger temp = [arr[i] integerValue];
        for (NSInteger j = i-1; j >= 0 && [arr[j] integerValue] > temp; j--) {
                NSNumber* temp1 = arr[j+1];
                arr[j+1] = arr[j];
                arr[j] = temp1;
        }
    }
    NSLog(@"插入排序之后:%@", arr);
}

- (void)charu{
    NSMutableArray* arr = [NSMutableArray arrayWithObjects:@8,@3,@4,@2,@11,@6,@1,@9,@7,@5,@10, nil];
    NSLog(@"插入排序之前:%@", arr);
    for (NSInteger i = 1; i < arr.count; i++) {
        NSInteger temp = [arr[i] integerValue];
        for (NSInteger j = i-1; j >= 0 && [arr[j] integerValue] > temp; j--) {
            NSNumber* tt = arr[j];
            arr[j] = arr[j+1];
            arr[j+1] = tt;
        }
    }
    NSLog(@"插入排序之后:%@", arr);
}

- (void)kuaisu1:(NSMutableArray*)arr left:(NSInteger)left right:(NSInteger)right{
    if (left >= right) {
        return;
    }
    
//    i = 0
//    j = 10
    //5,3,4,2,8,6,1,9,7,11,10
//    j = 9
//    i = 4
    
//    j = 8
//    5,3,4,2,7,6,1,9,7,11,10
//    i = 7;
  //    5,3,4,2,7,6,1,8,9,11,10
//    j = 7 i = 7
//    跳出循环
    
    NSInteger i = left;
    NSInteger j = right;
    NSInteger temp = [arr[i] integerValue];
    while (i < j) {
        while (i < j && [arr[j] integerValue] >= temp) {
            j--;
        }
        arr[i] = arr[j];
        
        while (i < j && [arr[i] integerValue] <= temp) {
            i++;
        }
        arr[j] = arr[i];
        arr[i] = @(temp);
    }
    [self kuaisu:arr left:left right:j-1];
    [self kuaisu:arr left:j+1 right:right];
    NSLog(@"快速排序之后:%@", arr);
}

- (void)kuaisu:(NSMutableArray*)arr left:(NSInteger)left right:(NSInteger)right{
    if (left >= right) {
        return;
    }
    NSInteger i = left;
    NSInteger j = right;
    NSInteger temp = [arr[i] integerValue];
    while (i < j) {
        while (i < j && [arr[j] integerValue] >= temp) {
            j--;
        }
        arr[i] = arr[j];
        while (i < j && [arr[i] integerValue] <= temp) {
            i++;
        }
        arr[j] = arr[i];
        arr[i] = @(temp);
    }
    [self kuaisu:arr left:left right:j-1];
    [self kuaisu:arr left:j+1 right:right];
}

@end
