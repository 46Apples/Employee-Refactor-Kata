//
// Created by Wayne Delport on 2017/12/31.
// Copyright (c) 2017 com.46Apples. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum EmployeeTypes {
    ENGINEER = 0,
    SALESMAN = 1,
    MANAGER = 2
} Type;

@interface Employee : NSObject

- (instancetype)initWithType:(Type)type;

- (int)payAmount;

@end