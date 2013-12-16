//
//  AuthenticationHandler.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-19.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "UserResource.h"

#import "Envelope.h"
#import "HttpError.h"
#import "JSONModel.h"
#import "User.h"
#import "UserCredentials.h"
#import "UserRegistrationInfo.h"

@implementation UserResource

NSMutableData *_receivedData;
HttpRequest *_request;

- (id)init {
    self = [super init];
    if (self) {
        _request = [[HttpRequest alloc] initWithDelegate:self];
    }
    return self;
}

- (void)login:(UserCredentials *)userCredentials {
    // Dont hardcode url here and pass in usercredentials
    NSString *url = @"http://54.200.78.124:8080/0.0.1-SNAPSHOT/users/login";
    
    [_request sendJSONPostWithUrl:url jsonObject:userCredentials];
}

- (void)registerUser:(UserRegistrationInfo *)registrationInfo {
    NSString *url = @"http://54.200.78.124:8080/0.0.1-SNAPSHOT/users/register";
    
    [_request sendJSONPostWithUrl:url jsonObject:registrationInfo];
}

- (void)getUserWithId:(int) userId {
    NSString *url = [NSString stringWithFormat:@"http://54.200.78.124:8080/0.0.1-SNAPSHOT/users/show?id=%d", userId];
    
    [_request sendGetWithUrl:url];
}

- (void)updateProfilePhotoWithUrl:(NSString *)url userId:(int)userId {
    // ANTHONY RETURN THE USER!
}

#pragma mark -
#pragma  mark HttpRequestDelegate
// Add method for error handling when connection failed

- (void)didGetResponse:(NSString *)response {
    NSError *error = nil;
    Envelope *envelope = [[Envelope alloc] initWithString:response error:&error];
    if (error == nil) {
        if (envelope.metadata.code == 202) {
            User *user = [self userFromDictionary:envelope.result];
            [self.delegate responseWithUser:user];
            return;
        } else if (envelope.metadata.errorType && envelope.metadata.errorMessage) {
            HttpError *httpError =
                [[HttpError alloc] initWithStatusCode:envelope.metadata.code
                                         errorMessage:envelope.metadata.errorMessage
                                            errorType:envelope.metadata.errorType];
            [self.delegate responseWithError:httpError];
            return;
        }
    }
    // Something went wrong with the request. for now tell client request was not made
    
    [self.delegate requestNotMade];
}

#pragma mark -
#pragma mark private

- (User *)userFromDictionary:(NSDictionary *)userDictionary {
    NSError *error = nil;
    User *user = [[User alloc] initWithDictionary:userDictionary error:&error];
    return user;
}

@end
