//
// Created by Wayne Delport on 2018/12/02.
// Copyright (c) 2018 com.46Apples. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeType : NSObject

- (Type)getTypeCode;

+ (EmployeeType *)create:(Type)type;

@end