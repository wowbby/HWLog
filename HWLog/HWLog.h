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

#define HWLogError(frmt, ...) DDLogError(frmt)
#define HWLogWarn(frmt, ...) DDLogWarn(frmt)
#define HWLogInfo(frmt, ...) DDLogInfo(frmt)
#define HWLogDebug(frmt, ...) DDLogDebug(frmt)
#define HWLogVerbose(frmt, ...) DDLogVerbose(frmt)
@interface HWLog : NSObject

@end
