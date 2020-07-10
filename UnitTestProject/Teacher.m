//
//  Teacher.m
//  UnitTestProject
//
//  Created by fd-macmini on 2020/7/10.
//  Copyright © 2020 howhyone. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"
@implementation Teacher

- (void)printStudenAge:(NSInteger)ageInt Name:(NSString *)nameStr {
    
}

- (void)getStudentDetail {
    Student *student = [Student new];
    NSLog(@"%@ is %ld yead old",student.studentName, student.studentAge);
}

@end
