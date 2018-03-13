//
//  RCViewController.m
//  RCDebugKit
//
//  Created by yxjxx on 03/02/2018.
//  Copyright (c) 2018 yxjxx. All rights reserved.
//

#import "RCViewController.h"
#import "RCToast.h"

@interface RCViewController ()

@end

@implementation RCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [RCToast showToastMessage:@"hello, my name is rico." withDuration:10];
    });
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
