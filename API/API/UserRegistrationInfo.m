//
//  UserRegistrationInfo.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "UserRegistrationInfo.h"

@implementation UserRegistrationInfo

- (id)initWithUsername:(NSString *)username password:(NSString *)password email:(NSString *)email {
    self = [super init];
    if (self) {
        self.username = username;
        self.password = password;
        self.email = email;
    }
    return self;
}

@end
