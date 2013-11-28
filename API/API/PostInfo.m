//
//  PostInfo.m
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PostInfo.h"

@implementation PostInfo

- (id)initWithText:(NSString *)text userId:(int)userId zoneId:(int)zoneId longitude:(float)longitude latitude:(float)latitude isAnonymous:(BOOL)isAnonymous {
    self = [super init];
    if (self) {
        self.text = text;
        self.userId = userId;
        self.zoneId = zoneId;
        self.longitude = longitude;
        self.latitude = latitude;
        self.isAnonymous = isAnonymous;
    }
    return self;
}

@end
