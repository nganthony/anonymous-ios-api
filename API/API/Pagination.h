//
//  Pagination.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-28.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "JSONModel.h"

@interface Pagination : JSONModel

@property (nonatomic, assign) NSString *previousUrl;
@property (nonatomic, assign) NSString *nextUrl;

@end
