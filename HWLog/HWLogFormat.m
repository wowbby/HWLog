//
//  HWLogFormat.m
//  日志测试
//
//  Created by 郑振兴 on 16/6/1.
//  Copyright © 2016年 北京海尔广科数字技术有限公司－郑振兴. All rights reserved.
//

#import "HWLogFormat.h"

@interface HWLogFormat ()
@property (strong, nonatomic)NSDateFormatter *threadUnsafeDateFormatter;

@end

@implementation HWLogFormat
- (id)init {
    if((self = [super init])) {
        _threadUnsafeDateFormatter = [[NSDateFormatter alloc] init];
        [_threadUnsafeDateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss:SSS"];
    }
    return self;
}
- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *logLevel;
    switch (logMessage->_flag) {
        case DDLogFlagError    : logLevel = @"ERRLOG"; break;
        case DDLogFlagWarning  : logLevel = @"WARNLOG"; break;
        case DDLogFlagInfo     : logLevel = @"INFOLOG"; break;
        case DDLogFlagDebug    : logLevel = @"DEBUGLOG"; break;
        default                : logLevel = @"VERBOSELOG"; break;
    }
    
    NSString *dateAndTime = [_threadUnsafeDateFormatter stringFromDate:(logMessage->_timestamp)];
    
    return [NSString stringWithFormat:@"%@ :<%@> \nFile:%@\nFunction:%@\nLine:%lu\n%@\n",dateAndTime, logLevel,logMessage->_fileName,logMessage->_function,(unsigned long)logMessage->_line, logMessage->_message];
}
@end
