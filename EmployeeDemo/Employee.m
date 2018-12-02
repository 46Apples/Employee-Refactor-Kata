//
// Created by Wayne Delport on 2017/12/31.
// Copyright (c) 2017 com.46Apples. All rights reserved.
//

#import "Employee.h"
#import "EmployeeType.h"

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
    employeeType = [EmployeeType create:type];
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