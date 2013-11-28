//
//  CommentInfo.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JSONModel.h"
@interface CommentInfo : JSONModel

@property (nonatomic, assign) NSString *text;
@property (nonatomic, assign) int userId;
@property (nonatomic, assign) int postId;
@property (nonatomic, assign) BOOL isAnonymous;

- (id)initWithText:(NSString *)text userId:(int)userId postId:(int)postId isAnonymous:(BOOL)isAnonymous;

@end
