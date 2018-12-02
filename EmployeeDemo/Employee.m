//
// Created by Wayne Delport on 2017/12/31.
// Copyright (c) 2017 com.46Apples. All rights reserved.
//

#import "Employee.h"

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
    return [employeeType payAmount];
}

@end