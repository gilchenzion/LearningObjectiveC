//
//  SettingsViewController.h
//  Tweet
//
//  Created by Gil Chen-Zion on 12/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwitterUser.h"

@interface SettingsViewController : UIViewController <UITextFieldDelegate>
{
    UITextField *usernameTextField;
    TwitterUser *twitterUser;
}

@property (nonatomic, retain) IBOutlet UITextField *usernameTextField;
@property (nonatomic, retain) TwitterUser *twitterUser;

- (IBAction)doneButtonTapped;

@end
