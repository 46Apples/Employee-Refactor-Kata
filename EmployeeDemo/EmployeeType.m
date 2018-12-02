//
// Created by Wayne Delport on 2018/12/02.
// Copyright (c) 2018 com.46Apples. All rights reserved.
//

#import "EmployeeType.h"

@implementation EmployeeType

- (Type)getTypeCode {
    @throw([NSException exceptionWithName:@"getTypeCode() should be overridden in subclass" reason:nil userInfo:nil]);
}

@end