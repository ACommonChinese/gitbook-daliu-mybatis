//
//  MapperProxy.m
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/3.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import "MapperProxy.h"

@interface MapperProxy ()

@property (nonatomic, strong) NSDictionary<NSString *, Mapper *> *mappers;

@end

@implementation MapperProxy

- (instancetype)initWithMappers:(NSDictionary<NSString *, Mapper *> *)mappers {
    if (self = [super init]) {
        self.mappers = mappers;
    }
    return self;
}

- (void)invoke {
    NSLog(@"Here invoke");
}

@end
