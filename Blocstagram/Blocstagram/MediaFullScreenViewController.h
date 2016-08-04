//
//  MediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Kenneth Chou on 8/3/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@interface MediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

- (instancetype) initWithMedia:(Media *)media;


- (void) centerScrollView;

@end


