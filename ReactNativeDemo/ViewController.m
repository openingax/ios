//
//  ViewController.m
//  ReactNativeDemo
//
//  Created by 谢立颖 on 2018/11/8.
//  Copyright © 2018 Viomi. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"ReactNativeDemo" initialProperties:@{@"app": @"ReactNativeDemo"} launchOptions:nil];
    self.view = rootView;
}


@end
