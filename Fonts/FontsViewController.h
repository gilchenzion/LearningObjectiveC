//
//  FontsViewController.h
//  Fonts
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontsViewController : UIViewController
{
    UILabel *resultLabel;
    UISegmentedControl *fontNameControl;
    UILabel *fontSizeNumberLabel;
    UISlider *fontSizeSlider;
    UISwitch *capitalizedSwitch;
}

@property (nonatomic, retain) IBOutlet UILabel *resultLabel;
@property (nonatomic, retain) IBOutlet UISegmentedControl *fontNameControl;
@property (nonatomic, retain) IBOutlet UILabel *fontSizeNumberLabel;
@property (nonatomic, retain) IBOutlet UISlider *fontSizeSlider;
@property (nonatomic, retain) IBOutlet  UISwitch *capitalizedSwitch;

-(IBAction)fontNameControlValueChanged:(id)sender;
-(IBAction)fontSizeSliderValueChanged:(id)sender;
-(IBAction)capitalizedSwichValueChanged:(id)sender;

@end
