//
//  ZoneResource.m
//  Playfield
//
//  Created by Abdul Qureshi on 12/16/2013.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "ZoneResource.h"
#import "Envelope.h"
#import "JSONModelArray.h"

@implementation ZoneResource

NSMutableData *_receivedData;
HttpRequest *_request;

- (id)init {
    self = [super init];
    if (self) {
        _request = [[HttpRequest alloc] initWithDelegate:self];
    }
    return self;
}

- (void)zoneList {
    NSString *url = @"http://54.200.78.124:8080/0.0.1-SNAPSHOT/zones/list";
    
    [_request sendGetWithUrl:url];
}

#pragma mark -
#pragma mark HttpRequestDelegate

- (void)didGetResponse:(NSString *)response {
    NSError *error = nil;
    Envelope *envelope = [[Envelope alloc] initWithString:response error:&error];
    if (error == nil) {
        if (envelope.metadata.code == 200) {
            // We Know that enevelope.result will be an array in this case
            [self.delegate responseWithZoneList:(NSArray *)envelope.result];
        } else if (envelope.metadata.errorType && envelope.metadata.errorMessage) {
            HttpError *httpError =
            [[HttpError alloc] initWithStatusCode:envelope.metadata.code
                                     errorMessage:envelope.metadata.errorMessage
                                        errorType:envelope.metadata.errorType];
            [self.delegate responseWithError:httpError];
            return;
        }
    }
    [self.delegate requestNotMade];
}

@end
