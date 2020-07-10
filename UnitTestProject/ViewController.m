//
//  ViewController.m
//  UnitTestProject
//
//  Created by fd-macmini on 2020/7/10.
//  Copyright © 2020 howhyone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *testBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)setupView {
    [self.view addSubview:self.testBtn];
    self.testBtn.frame = CGRectMake(100, 1000, 100, 30);
}

- (void)clickTestBtn {
    NSLog(@"-=-=-=- 点击了testBtn");
}

#pragma mark ------- lazyLoad
- (UIButton *)testBtn {
    if (!_testBtn) {
        _testBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        _testBtn.backgroundColor = [UIColor orangeColor];
        [_testBtn setTitle:@"UnitTest" forState:UIControlStateNormal];
        [_testBtn addTarget:self action:@selector(clickTestBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _testBtn;
}

@end
