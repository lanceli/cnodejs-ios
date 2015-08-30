//
//  APIManager.h
//  cnodejs
//
//  Created by Lance Li on 8/30/15.
//  Copyright (c) 2015 Lance Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"
#import "TopicsJsonModel.h"


@interface APIManager:NSObject

+ (APIManager *)sharedInstance;

- (void) getTopics:(void (^)(TopicsJsonModel *))success;

@end
