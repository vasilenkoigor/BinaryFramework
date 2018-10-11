//
//  RequestExecutor.h
//  BinaryFramework
//
//  Created by i.v.vasilenko on 11/10/2018.
//  Copyright © 2018 Igor Vasilenko. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

__attribute__((objc_subclassing_restricted))
@interface RequestExecutor : NSObject

@property (strong, nonatomic, readonly) NSURL *url;

- (void)executeWithCompletionBlock:(void(^)(id  _Nullable responseObject))completionBlock;

+ (instancetype)new __attribute__((unavailable("Use designated initializer")));
- (instancetype)init __attribute__((unavailable("Use designated initializer")));
- (instancetype)initWithURL:(NSURL *)url NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
