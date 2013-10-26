//
//  Post.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "JSONModel.h"
#import "Likes.h"

@interface Post : JSONModel

@property (nonatomic, assign) int _zoneId;
@property (nonatomic, assign) float _latitiude;
@property (nonatomic, assign) float _longitude;
@property (nonatomic, assign) Likes *_likes;
@property (nonatomic, assign) int _comments;
@property (nonatomic, assign) BOOL _userLiked;

@end
