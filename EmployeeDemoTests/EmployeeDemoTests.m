//
//  EmployeeDemoTests.m
//  EmployeeDemoTests
//
//  Created by Wayne Delport on 2017/12/31.
//  Copyright © 2017 com.46Apples. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Employee.h"

@interface EmployeeDemoTests : XCTestCase
@end

@implementation EmployeeDemoTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testEngineerIsPaid1000 {
    Employee *employee = [[Employee alloc] initWithType:ENGINEER];

    int actual = [employee payAmount];

    XCTAssertEqual(1000, actual);
}

- (void)testSalesmanIsPaid10 {
    Employee *employee = [[Employee alloc] initWithType:SALESMAN];

    int actual = [employee payAmount];

    XCTAssertEqual(10, actual);
}

- (void)testManagerIsPaid100 {
    Employee *employee = [[Employee alloc] initWithType:MANAGER];

    int actual = [employee payAmount];

    XCTAssertEqual(100, actual);
}

- (void)testDeveloperIsPaid1000000 {
    Employee *employee = [[Employee alloc] initWithType:DEVELOPER];

    int actual = [employee payAmount];

    XCTAssertEqual(1000000, actual);
}

@end
