//
// Created by Wayne Delport on 2018/12/02.
// Copyright (c) 2018 com.46Apples. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (int)payAmount {
    int result = 0;

    for (int i = 0; i < 1000000; i++) {
        result++;
    }

    return result;
}

@end