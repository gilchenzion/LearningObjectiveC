//
//  iShockUAppDelegate.h
//  iShockU
//
//  Created by Gil Chen-Zion on 12/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iShockUViewController;

@interface iShockUAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet iShockUViewController *viewController;

@end
