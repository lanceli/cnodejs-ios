//
//  Constants.h
//  cnodejs
//
//  Created by Lance Li on 8/30/15.
//  Copyright (c) 2015 Lance Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

#define APP_FOLDER [[NSBundle mainBundle] resourcePath]
#define USER_DEFAULT [NSUserDefaults standardUserDefaults]
#define APP_DELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])

extern NSString * const kAPIUrl;

static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
extern NSInteger const kRequestTimeOutInterval;