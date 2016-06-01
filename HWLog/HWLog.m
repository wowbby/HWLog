//
//  HWLog.m
//  日志测试
//
//  Created by 郑振兴 on 16/6/1.
//  Copyright © 2016年 北京海尔广科数字技术有限公司－郑振兴. All rights reserved.
//

#import "HWLog.h"
#import "HWLogFormat.h"

@implementation HWLog
+ (void)load
{

    setenv("XcodeColors", "YES", 0);
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
    fileLogger.rollingFrequency = 60 * 60 * 24;
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    [DDLog addLogger:fileLogger];
    [DDTTYLogger sharedInstance].logFormatter = [[HWLogFormat alloc] init];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor whiteColor] backgroundColor:[UIColor grayColor] forFlag:DDLogFlagVerbose];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor lightGrayColor] backgroundColor:[UIColor whiteColor] forFlag:DDLogFlagDebug];

    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor blackColor] backgroundColor:[UIColor whiteColor] forFlag:DDLogFlagInfo];

    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor orangeColor] backgroundColor:[UIColor whiteColor] forFlag:DDLogFlagWarning];

    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor whiteColor] backgroundColor:[UIColor redColor] forFlag:DDLogFlagError];
}

@end
