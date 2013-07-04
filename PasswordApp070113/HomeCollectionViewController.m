//
//  HomeCollectionViewController.m
//  PasswordApp070113
//
//  Created by Andrew Bennie on 7/2/13.
//  Copyright (c) 2013 Frank Rivera. All rights reserved.
//

#import "HomeCollectionViewController.h"
#import "AddLockerViewController.h"
#import "LockerName.h"
#import "Account.h"

@interface HomeCollectionViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, retain) UICollectionView *collectionView;
@property (nonatomic, retain) NSMutableArray *results;

@end

@implementation HomeCollectionViewController

# pragma mark Lifecyle

- (void) viewDidLoad
{
    
[super viewDidLoad];

    //Add Title
    self.title = @"My Lockers";
    
    
    // Create, allocate and initialize an Add Locker button
    UIBarButtonItem *addLocker = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addLocker:)];
    
    
    // set the add to right bar button on the navigation bar
    self.navigationItem.rightBarButtonItem = addLocker;
    
    //push this viewcontroller on the main navigation controller to Add Locker
//    self.viewController = [[UINavigationController alloc] initWithRootViewController:AddLockerViewController];
    AddLockerViewController *addLockerVC = [[AddLockerViewController alloc] initWithNibName:nil bundle:nil];
    
    [self.navigationController pushViewController: addLockerVC animated: YES];

  
}

//- (void) addLocker:(id) sender


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

       // UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        [flowLayout setItemSize:CGSizeMake(200, 140)];
        [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
        
        UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:flowLayout];
        self.collectionView = collectionView;
        
        [self.view addSubview:self.collectionView];
        
        [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"LockerCollectionViewCell"];
        
    
    UIImage *image1 = [UIImage imageNamed:@"home_btn.png"];
    UIImage *image2 = [UIImage imageNamed:@"btn_1.png"];
    UIImage *image3 = [UIImage imageNamed:@"btn_2.png"];
    UIImage *image4 = [UIImage imageNamed:@"btn_3.png"];
    [self.results addObject:image1];
    [self.results addObject:image2];
    [self.results addObject:image3];
    [self.results addObject:image4];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
        
    //reload collection view in case a locker was changed
    [self.collectionView reloadData];
    return self;
    }
return 0;
}



    // Do any additional setup after loading the view, typically from a nib.
    

-(void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UICollectionViewDataSource
    
    - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
    {
        return [self.lockers count];
    }
    
    - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
    {
        return 1;
    }
    - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
    {
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor colorWithPatternImage:[self.lockers objectAtIndex:indexPath.row]];
        return cell;
    }
    
    - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
        UIImage *image = [self.lockers objectAtIndex:indexPath.row];
        return CGSizeMake(image.size.width, image.size.height);
    }
    
    - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
        return UIEdgeInsetsMake(50, 20, 50, 20);
    }
    


@end
