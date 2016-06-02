//
//  HWLog.h
//  日志测试
//
//  Created by 郑振兴 on 16/6/1.
//  Copyright © 2016年 北京海尔广科数字技术有限公司－郑振兴. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CocoaLumberjack.h"

#if DEBUG
static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
#else
static const DDLogLevel ddLogLevel = DDLogLevelWarning;
#endif

#define HWLogError(format,...)   DDLogError(@"%@",format)
#define HWLogWarn(format,...)    DDLogWarn(@"%@",format)
#define HWLogInfo(format,...)    DDLogInfo(@"%@",format)
#define HWLogDeBug(format,...)   DDLogDebug(@"%@",format)
#define HWLogVerbose(format,...) DDLogVerbose(@"%@",format)
@interface HWLog : NSObject

@end
