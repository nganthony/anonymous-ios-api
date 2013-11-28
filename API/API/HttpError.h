//
//  HttpError.h
//  API
//
//  Created by Abdul Qureshi on 2013-11-21.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpError : NSError

@property(nonatomic, assign) int statusCode;
@property(nonatomic, strong) NSString *errorMessage;
@property(nonatomic, strong) NSString *errorType;

- (id)initWithStatusCode:(int)statusCode errorMessage:(NSString *)errorMessage errorType:(NSString *)errorType;

@end
