//
//  HomeCollectionViewController.h
//  PasswordApp070113
//
//  Created by Andrew Bennie on 7/2/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddPasswordViewController.h"
#import "AddLockerViewController.h"

@interface HomeCollectionViewController : UICollectionViewController <UICollectionViewDelegate, UICollectionViewDataSource>

//This property tracks if a predicate is available.
@property (strong, nonatomic) NSPredicate *currentPredicate;

//This is an outlet for the main collection view
@property (strong, nonatomic) IBOutlet UICollectionView *homeCollectionView;

@property (strong, nonatomic)UINavigationController *navigationController;

//Create an array to store locker names
@property (strong, nonatomic) NSArray *lockers;

// This method returns an array oflockers
-(NSArray *) lockers;


@end
