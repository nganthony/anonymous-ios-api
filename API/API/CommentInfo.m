//
//  CommentInfo.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "CommentInfo.h"

@implementation CommentInfo

NSString *_text;
int _userId;
int _postId;
BOOL _isAnonymous;

- (id)initWithText:(NSString *)text userId:(int)userId postId:(int)postId isAnonymous:(BOOL)isAnonymous {
    self = [super init];
    if (self) {
        _text = text;
        _userId = userId;
        _postId = postId;
        _isAnonymous = isAnonymous;
    }
    return self;
}

@end
