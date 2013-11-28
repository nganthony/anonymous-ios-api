//
//  HttpError.m
//  API
//
//  Created by Abdul Qureshi on 2013-11-21.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "HttpError.h"

@implementation HttpError

- (id)initWithStatusCode:(int)statusCode errorMessage:(NSString *)errorMessage errorType:(NSString *)errorType {
    self = [super init];
    if (self) {
        self.errorMessage = errorMessage;
        self.statusCode = statusCode;
        self.errorType = errorType;
    }
    return self;
}

@end
