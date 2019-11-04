//
//  MyInvocationHandler.m
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/2.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import "MyInvocationHandler.h"
#import "SqlSession.h"

@implementation MyInvocationHandler

- (void)invoke {
    NSLog(@"Did called.");
}

//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    NSLog(@"%@", NSStringFromSelector(sel));
//    return YES;
//}

@end
