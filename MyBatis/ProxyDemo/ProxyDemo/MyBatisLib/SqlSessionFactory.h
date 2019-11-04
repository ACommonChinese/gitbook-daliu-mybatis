//
//  SqlSessionFactory.h
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/3.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SqlSession.h"

NS_ASSUME_NONNULL_BEGIN

@protocol SqlSessionFactory <NSObject>

/**
 创建一个新的数据库操作对象
 */
- (id<SqlSession>)openSession;

@end

NS_ASSUME_NONNULL_END
