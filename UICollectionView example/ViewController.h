//
//  ViewController.h
//  UICollectionView example
//
//  Created by Alex Tataurov on 9/18/13.
//  Copyright (c) 2013 Alex Tataurov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

@end