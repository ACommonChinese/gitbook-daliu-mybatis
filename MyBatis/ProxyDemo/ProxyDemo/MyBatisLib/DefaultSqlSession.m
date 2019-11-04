//
//  DefaultSqlSession.m
//  ProxyDemo
//
//  Created by liuweizhen on 2019/11/3.
//  Copyright © 2019 liuxing8807@126.com. All rights reserved.
//

#import "DefaultSqlSession.h"
#import "SqlSession.h"
#import <sqlite3.h>
#import "MyProxy.h"
#import "MapperProxy.h"

@interface DefaultSqlSession ()
{
    sqlite3 *_db;
}

@property (nonatomic, strong) Configuration *config;
@property (nonatomic, assign) NSInteger errorCode;
// @property (nonatomic, strong) SqlError *error;

@end

@implementation DefaultSqlSession

- (instancetype)initWithConfig:(Configuration *)config {
    if (self = [super init]) {
        self.config = config;
        int result = sqlite3_open(config.dbPath.UTF8String, &_db);
        if (result == SQLITE_OK) {
            NSLog(@"数据库打开成功");
        } else {
            NSLog(@"数据库打开失败");
            // self.error = SqlError.openError;
            int result = sqlite3_close(_db);
            if (result == SQLITE_OK) {
                _db = nil;
            } else {
                NSLog(@"关闭数据库失败: %d", result);
            }
        }
    }
    return self;
}

- (id)getMapper:(Protocol *)protocol {
    MapperProxy *proxy = [[MapperProxy alloc] init];
    proxy.protocol = protocol;
    proxy.mappers = self.config.mappers;
    return [MyProxy createProxyInstance:proxy];
}

- (void)close {
    sqlite3_close(_db);
}

@end
