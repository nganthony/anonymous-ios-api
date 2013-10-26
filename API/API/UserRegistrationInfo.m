//
//  UserRegistrationInfo.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "UserRegistrationInfo.h"

@implementation UserRegistrationInfo

NSString *_username;
NSString *_password;
NSString *_email;

- (id)initWithUsername:(NSString *)username password:(NSString *)password email:(NSString *)email {
    self = [super init];
    if (self) {
        _username = username;
        _password = password;
        _email = email;
    }
    return self;
}

@end
