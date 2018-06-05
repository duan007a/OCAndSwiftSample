//
//  MyOCClass.m
//  OCNetworkStatusSample
//
//  Created by huaixu on 2018/6/4.
//  Copyright © 2018年 huaixu. All rights reserved.
//

#import "MyOCClass.h"

@implementation MyOCClass

+ (void)sayHello
{
    NSLog(@"Hello, I'm from OC!");
}

- (void)originMethod
{
    NSLog(@"originMethod");
}
- (void)newMethod
{
    NSLog(@"newMethod");
}

+ (void)originClassMethod
{
    NSLog(@"originClassMethod");
}

+ (void)newClassMethod
{
    NSLog(@"newClassMethod");
}

@end
