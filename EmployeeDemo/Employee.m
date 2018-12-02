//
// Created by Wayne Delport on 2017/12/31.
// Copyright (c) 2017 com.46Apples. All rights reserved.
//

#import "Employee.h"
#import "EmployeeType.h"
#import "Engineer.h"
#import "Salesman.h"
#import "Manager.h"

@implementation Employee {
    EmployeeType *employeeType;
}

- (instancetype)initWithType:(Type)type {
    if (self = [super init]) {
        [self setTypeCode:type];
    }

    return self;
}

- (void)setTypeCode:(Type)type {
    switch (type) {
        case ENGINEER:
            employeeType = [Engineer new];
            break;
        case SALESMAN:
            employeeType = [Salesman new];
            break;
        case MANAGER:
            employeeType = [Manager new];
            break;
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
    return [employeeType getTypeCode];
}

@end