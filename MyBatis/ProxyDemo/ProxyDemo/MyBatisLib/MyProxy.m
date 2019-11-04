//
//  MyProxy.m
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/2.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

//public <T> T getMapper(Class<T> daoInterfaceClass) {
//       return (T) Proxy.newProxyInstance(daoInterfaceClass.getClassLoader(),
//               new Class[]{daoInterfaceClass},new MapperProxy(cfg.getMappers(),connection));
//   }


#import "MyProxy.h"
#import <objc/runtime.h>

@interface MyProxy ()

@property (nonatomic, strong) id<InvocationHandler> invocationHandler;

@end

@implementation MyProxy

// 1.查询该方法的方法签名
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    NSLog(@"%@", NSStringFromSelector(sel)); // selectAll
    return [(NSObject *)self.invocationHandler methodSignatureForSelector:@selector(invoke)];
}

// 2.有了方法签名之后就会调用方法实现
// 转发到InvocationHandler的invoke方法上
- (void)forwardInvocation:(NSInvocation *)invocation {
    NSLog(@"%@", invocation);
    // NSMethodSignature *signature = [invocation methodSignature];
    // NSUInteger argumentCount = [signature numberOfArguments];
    [invocation setTarget:self.invocationHandler]; // 对象
    [invocation setSelector:@selector(invoke)]; // 方法
    [invocation invoke];
}

+ (id)createProxyInstance:(id<InvocationHandler>)handler {
    MyProxy *proxy = [MyProxy alloc];
    proxy.invocationHandler = handler;
    return proxy;
}

@end
