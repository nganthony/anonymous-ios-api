//
//  AuthenticationHandler.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-19.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpRequest.h"
#import "UserCredentials.h"
#import "HttpError.h"
#import "User.h"

@protocol UserDelegate <NSObject>

- (void)responseWithUser:(User *)user;

- (void)responseWithError:(HttpError *)error;

- (void)requestNotMade;

@end

@interface UserResource : NSObject <HttpRequestDelegate>

@property(nonatomic, weak) id<UserDelegate> delegate;

- (void)login:(UserCredentials *)userCredentials;

@end
