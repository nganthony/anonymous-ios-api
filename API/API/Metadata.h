//
//  Metadata.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-28.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "JSONModel.h"

@interface Metadata : JSONModel

@property (nonatomic, assign) int code;
@property (nonatomic, assign) NSString<Optional> *errorType;
@property (nonatomic, assign) NSString<Optional> *errorMessage;

@end
