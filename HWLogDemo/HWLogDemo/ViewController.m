//
//  ViewController.m
//  HWLogDemo
//
//  Created by 郑振兴 on 16/6/1.
//  Copyright © 2016年 北京海尔广科数字技术有限公司－郑振兴. All rights reserved.
//

#import "ViewController.h"
#import "HWLog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HWLogError(@{@"Error":@"error"});
    HWLogWarn(@{@"warn":@"warn"});
    HWLogInfo(@{@"info":@"info"});
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
