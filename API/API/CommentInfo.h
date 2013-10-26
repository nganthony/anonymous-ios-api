//
//  CommentInfo.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommentInfo : NSObject

- (id)initWithText:(NSString *)text userId:(int)userId postId:(int)postId isAnonymous:(BOOL)isAnonymous;

@end
