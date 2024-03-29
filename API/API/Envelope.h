//
//  Envelope.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-28.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "JSONModel.h"
#import "Metadata.h"
#import "Pagination.h"

@interface Envelope : JSONModel

@property (nonatomic, assign) id<Optional> result;
@property (nonatomic, assign) Pagination<Optional> *pagination;
@property (nonatomic, assign) Metadata *metadata;

@end
