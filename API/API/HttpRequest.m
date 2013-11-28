//
//  HttpRequest.m
//  API
//
//  Created by Abdul Qureshi on 2013-11-09.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "HttpRequest.h"
#import "JSONModel.h"

@implementation HttpRequest

NSMutableData *_receivedData;

- (id)initWithDelegate:(id<HttpRequestDelegate>)delegate {
    self = [super init];
    if (self) {
        _receivedData = [[NSMutableData alloc] init];
        self.delegate = delegate;
    }
    return self;
}

- (void)sendJSONPostWithUrl:(NSString *)url jsonObject:(JSONModel *)jsonObject {
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    NSString *jsonString = [jsonObject toJSONString];
    NSData *data = [NSData dataWithBytes:[jsonString UTF8String] length:[jsonString length]];
    
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[data length]] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:data];
    
    [NSURLConnection connectionWithRequest:request delegate:self];
}

- (void)sendGetWithUrl:(NSString *)url {
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:@"GET"];
    
    [NSURLConnection connectionWithRequest:request delegate:self];
}
#pragma mark NSURLConnectionDelegate

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    [_receivedData setLength:0];
    // TODO: This means we were not able to attempt the request, need to figure out what to do here (graceful failure)
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [_receivedData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [_receivedData appendData:data];
}

- (void)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse {
    // Nothing to do here
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSString *response = [[NSString alloc] initWithData:_receivedData encoding:NSUTF8StringEncoding];
    
    [self.delegate didGetResponse:response];
}
@end
