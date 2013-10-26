//
//  PostInfo.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PostInfo.h"

@implementation PostInfo

NSString *_text;
int _userId;
int _zoneId;
float _longitude;
float _latitiude;
BOOL _isAnonymous;

- (id)initWithText:(NSString *)text userId:(int)userId zoneId:(int)zoneId longitude:(float)longitude latitude:(float)latitude isAnonymous:(BOOL)isAnonymous {
    self = [super init];
    if (self) {
        _text = text;
        _userId = _userId;
        _zoneId = _zoneId;
        _longitude = _longitude;
        _latitiude = _latitiude;
        _isAnonymous = _isAnonymous;
    }
    return self;
}

@end
