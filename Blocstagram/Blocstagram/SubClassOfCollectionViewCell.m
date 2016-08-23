//
//  SubClassOfCollectionViewCell.m
//  Blocstagram
//
//  Created by Kenneth Chou on 8/22/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import "SubClassOfCollectionViewCell.h"

@implementation SubClassOfCollectionViewCell


-(void) collectionView:(UICollectionView *)flowlayout image:(UIImage *)image lableText:(NSString *)text {
    
    static NSInteger imageViewTag = 1000;
    static NSInteger labelTag = 1001;

    UIImageView *thumbnail = (UIImageView *)[self.contentView viewWithTag:imageViewTag];
    UILabel *label = (UILabel *)[self.contentView viewWithTag:labelTag];

    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)flowlayout;
    CGFloat thumbnailEdgeSize = flowLayout.itemSize.width;

    if (!thumbnail) {
        thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, thumbnailEdgeSize, thumbnailEdgeSize)];
        thumbnail.contentMode = UIViewContentModeScaleAspectFill;
        thumbnail.tag = imageViewTag;
        thumbnail.clipsToBounds = YES;
    
        [self.contentView addSubview:thumbnail];
}

    if (!label) {
        label = [[UILabel alloc] initWithFrame:CGRectMake(0, thumbnailEdgeSize, thumbnailEdgeSize, 20)];
        label.tag = labelTag;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
        [self.contentView addSubview:label];
}

        thumbnail.image = image;
        label.text = text;
   
    
}
@end
