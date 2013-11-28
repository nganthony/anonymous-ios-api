//
//  User.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface User : JSONModel

@property (nonatomic, assign) int id;
@property (nonatomic, assign) NSString *username;
@property (nonatomic, assign) NSString *name;
@property (nonatomic, assign) NSString<Optional> *description;
@property (nonatomic, assign) NSString *email;
@property (nonatomic, assign) NSString<Optional> *profilePhoto;
@property (nonatomic, assign) long createdTimestamp;
@property (nonatomic, assign) BOOL isEnabled;

@end
