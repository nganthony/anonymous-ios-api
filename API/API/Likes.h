//
//  Likes.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "JSONModel.h"

@interface Likes : JSONModel

@property (nonatomic, assign) int count;
@property (nonatomic, assign) NSArray *users;

@end
