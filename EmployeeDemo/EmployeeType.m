//
// Created by Wayne Delport on 2018/12/02.
// Copyright (c) 2018 com.46Apples. All rights reserved.
//

#import "EmployeeType.h"
#import "Engineer.h"
#import "Salesman.h"
#import "Manager.h"

@implementation EmployeeType

+ (EmployeeType *)create:(Type)type {
    switch (type) {
        case ENGINEER:
            return [Engineer new];
        case SALESMAN:
            return [Salesman new];
        case MANAGER:
            return [Manager new];
        default:
            @throw([NSException exceptionWithName:@"Unknown Employee Type Code" reason:nil userInfo:nil]);
    }
}

- (int)payAmount {
    switch ([self getTypeCode]) {
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

- (Type)getTypeCode {
    @throw([NSException exceptionWithName:@"getTypeCode() should be overridden in subclass" reason:nil userInfo:nil]);
}

@end