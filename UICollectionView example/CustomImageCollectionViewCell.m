//
//  CustomImageCollectionViewCell.m
//  UICollectionView example
//
//  Created by Alex Tataurov on 9/18/13.
//  Copyright (c) 2013 Alex Tataurov. All rights reserved.
//

#import "CustomImageCollectionViewCell.h"

@interface CustomImageCollectionViewCell()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation CustomImageCollectionViewCell

@synthesize image = _image;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    if (self.image) {
        self.imageView.image = self.image;
    }
}

- (void)setImage:(UIImage *)anImage
{
    if (_image == nil || _image != anImage) {
        _image = anImage;
    }
    self.imageView.image = _image;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end