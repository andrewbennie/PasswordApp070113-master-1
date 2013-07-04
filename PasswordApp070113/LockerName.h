//
//  LockerName.h
//  PasswordApp070113
//
//  Created by Andrew Bennie on 7/3/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Account;

@interface LockerName : NSManagedObject

@property (nonatomic, retain) NSString * locker;
@property (nonatomic, retain) Account *parent;

@end
