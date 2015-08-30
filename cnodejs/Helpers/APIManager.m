//
//  APIManager.m
//  cnodejs
//
//  Created by Lance Li on 8/30/15.
//  Copyright (c) 2015 Lance Li. All rights reserved.
//

#import "APIManager.h"
#import "AFNetworking.h"

@implementation APIManager

+ (APIManager*) sharedInstance {
    static APIManager *specpodManager = nil;
    @synchronized(self) {
        if (specpodManager == nil) {
            specpodManager = [[self alloc] init];
        }
    }
    
    return specpodManager;
}


- (id)init
{
    self = [super init];
    
    if (self) {
    }
    
    return self;
}

- (void) getTopics:(void (^)(TopicsJsonModel *))success {
    //Create request
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:[kAPIUrl stringByAppendingString:@"topics"] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        //Save
        TopicsJsonModel *topics = [[TopicsJsonModel alloc] initWithDictionary:(NSDictionary *)responseObject error:nil];
        success(topics);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
