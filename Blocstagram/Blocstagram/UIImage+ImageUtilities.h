//
//  UIImage+ImageUtilities.h
//  Blocstagram
//
//  Created by Kenneth Chou on 8/15/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageUtilities)

- (UIImage *) imageWithFixedOrientation;
- (UIImage *) imageResizedToMatchAspectRatioOfSize:(CGSize)size;
- (UIImage *) imageCroppedToRect:(CGRect)cropRect;

@end
