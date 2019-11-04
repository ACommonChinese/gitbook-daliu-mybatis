//
//  SqlError.m
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/3.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import "SqlError.h"

@interface SqlError ()

- (instancetype)initWithCode:(NSInteger)code desc:(NSString *)desc;

@end

@implementation SqlError

+ (SqlError *)openError {
    return [[SqlError alloc] initWithCode:100 desc:@"SqlError: 打开数据库失败"];
}

@end
