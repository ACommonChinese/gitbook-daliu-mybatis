//
//  InvocationHandler.h
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/2.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol InvocationHandler <NSObject>

// public Object invoke(Object proxy, Method method, Object[] args)
//       throws Throwable;

//- (void)invoke:(NSObject *)proxy selector:(SEL)selector args:(NSArray *)args;

// InvocationHandler.java
// public Object invoke(Object proxy, Method method, Object[] args) throws Throwable;
- (void)invoke;

@end

NS_ASSUME_NONNULL_END
