//
//  CommentInfo.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "CommentInfo.h"

@implementation CommentInfo

- (id)initWithText:(NSString *)text userId:(int)userId postId:(int)postId isAnonymous:(BOOL)isAnonymous {
    self = [super init];
    if (self) {
        self.text = text;
        self.userId = userId;
        self.postId = postId;
        self.isAnonymous = isAnonymous;
    }
    return self;
}

@end
