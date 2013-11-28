//
//  PFApiManager.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-19.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFApiManager.h"

#import "UserResource.h"

@implementation PFApiManager

static PFApiManager *_sharedApiManager;

+ (PFApiManager *)sharedInstance {
    if (!_sharedApiManager) {
        _sharedApiManager = [[self alloc] init];
    }
    return _sharedApiManager;
}

- (void)login:(UserCredentials *)userCredentials {
    UserResource *authHandler = [[UserResource alloc] init];
    [authHandler login:userCredentials];
}



@end
