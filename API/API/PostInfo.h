//
//  PostInfo.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JSONModel.h"

@interface PostInfo : JSONModel

@property (nonatomic, assign) NSString *text;
@property (nonatomic, assign) int userId;
@property (nonatomic, assign) int zoneId;
@property (nonatomic, assign) float longitude;
@property (nonatomic, assign) float latitude;
@property (nonatomic, assign) BOOL isAnonymous;

- (id)initWithText:(NSString *)text
            userId:(int)userId
            zoneId:(int)zoneId
         longitude:(float)longitude
          latitude:(float)latitude
       isAnonymous:(BOOL)isAnonymous;

@end
