//
//  Zhuangshi.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

@interface Zhuangshi : Component{
    Component* com_;
}

- (void)operation:(Component*)com;

@end
