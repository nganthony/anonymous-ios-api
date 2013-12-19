//
//  ZoneResource.h
//  Playfield
//
//  Created by Abdul Qureshi on 12/16/2013.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpRequest.h"
#import "HttpError.h"

@protocol ZoneDelegate <NSObject>

- (void)responseWithZoneList:(NSArray *)zoneList;

- (void)responseWithError:(HttpError *)error;

- (void)requestNotMade;

@end

@interface ZoneResource : NSObject <HttpRequestDelegate>

@property(nonatomic, strong) id<ZoneDelegate> delegate;

- (void)zoneList;

@end
