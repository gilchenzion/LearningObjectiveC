//
//  iShockUViewController.h
//  iShockU
//
//  Created by Gil Chen-Zion on 12/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iShockUViewController : UIViewController
{
    UIButton *button;
    UILabel *label;
}

@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, retain) IBOutlet UILabel *label;

- (IBAction)buttonTouchDown:(id)sender;
- (IBAction)buttonTouchUp:(id)sender;

@end
