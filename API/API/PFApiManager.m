//
//  PFApiManager.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-19.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFApiManager.h"

#import "AuthenticationHandler.h"

@implementation PFApiManager

static PFApiManager *_sharedApiManager;

+ (PFApiManager *)sharedInstance {
    if (!_sharedApiManager) {
        _sharedApiManager = [[self alloc] init];
    }
    return _sharedApiManager;
}

- (void)authenticate:(NSString *)userName
        withPassword:(NSString *)password {
    AuthenticationHandler *authHandler = [[AuthenticationHandler alloc] init];
    [authHandler authenticate:userName withPassword:password];
}



@end
