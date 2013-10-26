//
//  UserCredentials.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "UserCredentials.h"

@implementation UserCredentials

NSString *_username;
NSString *_password;

- (id)initWithUsername:(NSString *)username password:(NSString *)password {
    self = [super init];
    if (self) {
        _username = username;
        _password = _password;
    }
    return self;
}
@end
