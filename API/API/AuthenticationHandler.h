//
//  AuthenticationHandler.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-19.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AuthenticationHandler : NSObject <NSURLConnectionDelegate>

- (void)authenticate:(NSString *)userName withPassword:(NSString *)password;

@end
