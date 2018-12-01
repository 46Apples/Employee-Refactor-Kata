//
// Created by Wayne Delport on 2017/12/31.
// Copyright (c) 2017 com.46Apples. All rights reserved.
//

#import "Employee.h"

@interface Employee ()
@property(nonatomic, assign) Type type;
@end

@implementation Employee

- (instancetype)initWithType:(Type)type {
    if (self = [super init]) {
        self.type = type;
    }

    return self;
}

- (int)payAmount {
    switch (self.type) {
        case ENGINEER:
            return 1000;
        case SALESMAN:
            return 10;
        case MANAGER:
            return 100;
        default:
            @throw([NSException exceptionWithName:@"Unknown Employee" reason:nil userInfo:nil]);
    }
}

@end