//
//  Teacher.h
//  UnitTestProject
//
//  Created by fd-macmini on 2020/7/10.
//  Copyright © 2020 howhyone. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject
- (void)printStudenAge:(NSInteger)ageInt Name:(NSString *)nameStr;

- (void)getStudentDetail;

@end

NS_ASSUME_NONNULL_END
