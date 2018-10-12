//
//  RequestExecutor.m
//  BinaryFramework
//
//  Created by i.v.vasilenko on 11/10/2018.
//  Copyright © 2018 Igor Vasilenko. All rights reserved.
//

#import "RequestExecutor.h"

#import "AFURLSessionManager.h"

@interface RequestExecutor ()

@property (strong, nonatomic) AFURLSessionManager *sessionManager;

@end

@implementation RequestExecutor

#pragma mark - Init

- (instancetype)initWithURL:(NSURL *)url {
    self = [super init];
    if (self) {
        _url = url;
    }
    return self;
}

#pragma mark - Public

- (void)executeWithCompletionBlock:(void (^)(id  _Nullable responseObject))completionBlock {
    NSURLRequest *request = [NSURLRequest requestWithURL:self.url];
    NSURLSessionDataTask *task = [self.sessionManager dataTaskWithRequest:request
                                                        completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
                                                            if (completionBlock) {
                                                                completionBlock(responseObject);
                                                            }
                                                        }];
    [task resume];
}

@end
