//
//  Zone.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-26.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "JSONModel.h"

@interface Zone : JSONModel

@property (nonatomic, assign) int id;
@property (nonatomic, assign) NSString *primaryName;
@property (nonatomic, assign) NSString *secondaryName;
@property (nonatomic, assign) float latitude;
@property (nonatomic, assign) float longitude;
@property (nonatomic, assign) float radius;
@property (nonatomic, assign) NSString *bannerPhoto;
@property (nonatomic, assign) BOOL comingSoon;

@end
