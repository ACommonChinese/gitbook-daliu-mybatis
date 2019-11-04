//
//  SqlError.h
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/3.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SqlError : NSObject

@property (nonatomic, copy) NSString *desc;
@property (nonatomic, assign) NSInteger code;

/// 打开数据库错误
@property (nonatomic, class, readonly) SqlError *openError;

@end

NS_ASSUME_NONNULL_END
