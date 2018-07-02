//
//  ZRPeople.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZRRequest.h"

@interface ZRPeople : NSObject{
@protected NSString* _name;
@protected ZRPeople* _upper;
}

- (instancetype)initWithName:(NSString*)name;

- (void)setUpper:(ZRPeople*)upper;

- (void)handleAction:(ZRRequest*)request;

@end
