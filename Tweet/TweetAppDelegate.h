//
//  TweetAppDelegate.h
//  Tweet
//
//  Created by Gil Chen-Zion on 12/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TweetViewController;

@interface TweetAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TweetViewController *viewController;

@end
