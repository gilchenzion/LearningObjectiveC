//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Gil Chen-Zion on 12/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
{
    UILabel *textLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *textLabel;

- (IBAction)changeTheTextOfTheLabel;

@end
