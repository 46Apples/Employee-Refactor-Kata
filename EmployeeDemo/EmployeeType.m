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
    @throw([NSException exceptionWithName:@"payAmount() should be overridden in subclass" reason:nil userInfo:nil]);
}

@end