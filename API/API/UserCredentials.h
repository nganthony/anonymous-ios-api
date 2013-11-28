//
//  UserCredentials.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JSONModel.h"

@interface UserCredentials : JSONModel

@property (nonatomic, assign) NSString *username;
@property (nonatomic, assign) NSString *password;

- (id)initWithUsername:(NSString *)username password:(NSString *)password;

@end
