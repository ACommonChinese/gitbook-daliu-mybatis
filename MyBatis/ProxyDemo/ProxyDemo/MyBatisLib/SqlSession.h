//
//  SqlSession.h
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/3.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SqlError.h"

NS_ASSUME_NONNULL_BEGIN

@protocol SqlSession <NSObject>

- (id)getMapper:(Protocol *)protocol;

/**
 释放资源
 */
- (void)close;

@end

NS_ASSUME_NONNULL_END
