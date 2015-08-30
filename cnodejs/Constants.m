//
//  Constants.m
//  cnodejs
//
//  Created by Lance Li on 8/30/15.
//  Copyright (c) 2015 Lance Li. All rights reserved.
//

#import "Constants.h"

#ifdef DEBUG
NSString * const kAPIUrl = @"http://dev.cnodejs.org/api/v1/";
NSInteger const kRequestTimeOutInterval = 3;
#else
NSString * const kAPIUrl = @"http://cnodejs.org/api/v1/";
NSInteger const kRequestTimeOutInterval = 20;
#endif