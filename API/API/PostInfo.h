//
//  PostInfo.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PostInfo : NSObject

- (id)initWithText:(NSString *)text
            userId:(int)userId
            zoneId:(int)zoneId
         longitude:(float)longitude
          latitude:(float)latitude
       isAnonymous:(BOOL)isAnonymous;

@end
