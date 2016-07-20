//
//  Comment.h
//  Blocstagram
//
//  Created by Kenneth Chou on 7/20/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@interface Comment : NSObject
@property (nonatomic, strong) NSString *idNumber;

@property (nonatomic, strong) User *from;
@property (nonatomic, strong) NSString *text;
    
@end
