//
//  HttpRequest.h
//  API
//
//  Created by Abdul Qureshi on 2013-11-09.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HttpRequestDelegate <NSObject>

- (void)didGetResponse:(NSString *)response;

@end

@interface HttpRequest : NSObject <NSURLConnectionDelegate>

@property (nonatomic, strong) id<HttpRequestDelegate> delegate;

- (id)initWithDelegate:(id<HttpRequestDelegate>)delegate;

- (void)sendJSONPostWithUrl:(NSString *) url jsonObject:(id) jsonObject;

- (void)sendGetWithUrl:(NSString *)url;

@end
