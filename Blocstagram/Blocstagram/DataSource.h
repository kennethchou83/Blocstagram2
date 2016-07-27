//
//  DataSource.h
//  Blocstagram
//
//  Created by Kenneth Chou on 7/20/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Media;

@interface DataSource : NSObject

typedef void (^NewItemCompletionBlock)(NSError *error);

+(instancetype) sharedInstance;

@property (nonatomic, strong, readonly) NSArray *mediaItems;

- (void) deleteMediaItem:(Media *)item;

- (void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;
- (void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;

@end
