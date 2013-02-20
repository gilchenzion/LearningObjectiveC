//
//  RuralForkAppDelegate.h
//  RuralFork
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RuralForkViewController;

@interface RuralForkAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet RuralForkViewController *viewController;

@end
