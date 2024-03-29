//
//  PFApiManager.h
//  API
//
//  Created by Abdul Qureshi on 2013-10-19.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserCredentials.h"

@interface PFApiManager : NSObject

+ (PFApiManager *)sharedInstance;

- (void)login:(UserCredentials *)userCredentials;

@end
