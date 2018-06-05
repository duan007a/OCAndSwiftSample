//
//  ViewController.m
//  OCNetworkStatusSample
//
//  Created by huaixu on 2018/6/4.
//  Copyright © 2018年 huaixu. All rights reserved.
//

#import "ViewController.h"
#import "OCNetworkStatusSample-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[[MySwiftClass alloc] init] sayHello];
    
    [[[MySwiftClass alloc] init] exchangeInstanceMethod];
    
    [[[MySwiftClass alloc] init] exchangeClassMethod];
    
    [[[MySwiftClass alloc] init] invokeInstanceMethod];
    
    [[[MySwiftClass alloc] init] invokeClassMethod];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
