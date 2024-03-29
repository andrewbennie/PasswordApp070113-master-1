//
//  QCAppDelegate.h
//  PasswordApp070113
//
//  Created by Frank Rivera on 7/1/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HomeCollectionViewController;
#import "AddLockerViewController.h"


@interface QCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HomeCollectionViewController *viewController;

@property (strong, nonatomic)UINavigationController *nav;

@property (strong, nonatomic) NSMutableArray *saveLocker;

@property (strong, nonatomic) NSData *lockerData;


@end
