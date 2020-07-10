//
//  TeacherTest.m
//  UnitTestProjectTests
//
//  Created by fd-macmini on 2020/7/10.
//  Copyright © 2020 howhyone. All rights reserved.
//  https://www.jianshu.com/p/9707ff30e567

#import <XCTest/XCTest.h>
#import "OCMock/OCMock.h"
#import "ViewController.h"
#import "Teacher.h"
#import "Student.h"
@interface TeacherTest : XCTestCase
@property (nonatomic, strong) ViewController *vc;
@end

@implementation TeacherTest

- (void)setUp {
    self.vc = [ViewController new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testGetStudentDetail {
    Student *mockStudent = OCMClassMock([Student class]);
    OCMStub([mockStudent studentAge])._andReturn(OCMOCK_VALUE(88));
    OCMStub([mockStudent studentName])._andReturn(OCMOCK_VALUE(@"小明"));
    
    [[Teacher new] getStudentDetail];
    
}

- (void)testExpectation {
    XCTestExpectation *expect = [self expectationWithDescription:@"timeout"];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(2);
        XCTAssertTrue(YES);
        [expect fulfill];
    });
    
    [self waitForExpectationsWithTimeout:10 handler:^(NSError * _Nullable error) {
        
    }];
}

@end
