//
//  Account.h
//  PasswordApp070113
//
//  Created by Andrew Bennie on 7/3/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "LockerName.h"

@class LockerName;

@interface Account : LockerName

@property (nonatomic, retain) NSString * account;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSString * datePasswordCreated;
@property (nonatomic, retain) LockerName *child;

@end
