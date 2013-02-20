//
//  TweetViewController.h
//  Tweet
//
//  Created by Gil Chen-Zion on 12/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwitterUser.h"

@interface TweetViewController : UIViewController
{
    UILabel *usernameLabel;
    UITextView *tweetTestView;
    TwitterUser *twitterUser;
}

@property (nonatomic, retain) IBOutlet UILabel *usernameLabel;
@property (nonatomic, retain) IBOutlet UITextView *tweetTestView;

- (IBAction)settingsButtonTapped;

@end
