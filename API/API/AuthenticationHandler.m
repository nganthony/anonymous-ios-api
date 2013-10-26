//
//  AuthenticationHandler.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-19.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "AuthenticationHandler.h"

@implementation AuthenticationHandler

NSMutableData *_receivedData;

- (void)authenticate:(NSString *)userName
        withPassword:(NSString *)password {
    _receivedData = [NSMutableData dataWithLength:0];
    NSString *jsonRequest = [self createJsonRequest:userName password:password];
    NSURL *authUrl = [NSURL URLWithString:@"http://54.200.78.124:8080/0.0.1-SNAPSHOT/users/login"];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:authUrl];
    NSData *data = [NSData dataWithBytes:[jsonRequest UTF8String] length:[jsonRequest length]];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[data length]] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:data];
    
    [NSURLConnection connectionWithRequest:request delegate:self];
}

#pragma mark-
#pragma mark NSURLConnectionDelegate methods

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
}

#pragma mark -
#pragma mark private

- (NSString *)createJsonRequest:(NSString *)userName password:(NSString *)password {
    //TODO: use JSON serialization
    return [NSString stringWithFormat:@"{\"username\":\"%@\",\"password\":\"%@\"}", userName, password];
}

@end
