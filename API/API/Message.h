//
//  Message.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "JSONModel.h"
#import "User.h"

@interface Message : JSONModel

@property (nonatomic, assign) int id;
@property (nonatomic, assign) NSString *text;
@property (nonatomic, assign) User *user;
@property (nonatomic, assign) BOOL isAnonymous;
@property (nonatomic, assign) long createdTimeStamp;

@end
