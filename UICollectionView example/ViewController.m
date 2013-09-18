//
//  ViewController.m
//  UICollectionView example
//
//  Created by Alex Tataurov on 9/18/13.
//  Copyright (c) 2013 Alex Tataurov. All rights reserved.
//

#import "ViewController.h"
#import "CustomImageCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSUInteger _selectedCellIndex;
}

@synthesize collectionView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _selectedCellIndex = 0;
    
    [self.collectionView registerClass:[CustomImageCollectionViewCell class] forCellWithReuseIdentifier:@"CustomImageCell"];
    [self.collectionView registerNib:[UINib nibWithNibName:@"CustomImageCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"CustomImageCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Datasource

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)aCollectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomImageCollectionViewCell *cell = [aCollectionView dequeueReusableCellWithReuseIdentifier:@"CustomImageCell" forIndexPath:indexPath];
    cell.layer.borderWidth = 0;
    
    cell.image = [UIImage imageNamed:@"cat.png"];
    
    if (indexPath.row == _selectedCellIndex) {
        cell.layer.borderWidth = 3.0;
        cell.layer.borderColor = [UIColor redColor].CGColor;
        
        [self.collectionView selectItemAtIndexPath:indexPath animated:NO scrollPosition:UICollectionViewScrollPositionNone];
    }
    
    return cell;
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [self.collectionView cellForItemAtIndexPath:indexPath];
    if (cell) {
        cell.layer.borderWidth = 3.0;
        cell.layer.borderColor = [UIColor redColor].CGColor;
        _selectedCellIndex = indexPath.row;
    }
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [self.collectionView cellForItemAtIndexPath:indexPath];
    if (cell) {
        cell.layer.borderWidth = 0;
    }
}


@end