//
// Created by Wayne Delport on 2018/12/02.
// Copyright (c) 2018 com.46Apples. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum EmployeeTypes {
    ENGINEER = 0,
    SALESMAN = 1,
    MANAGER = 2
} Type;

@interface EmployeeType : NSObject

+ (EmployeeType *)create:(Type)type;

- (int)payAmount;

@end