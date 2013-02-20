//
//  RuralForkViewController.h
//  RuralFork
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RuralForkViewController : UIViewController
    <UIPickerViewDelegate, UIPickerViewDataSource>
{
    UIPickerView *pickerView;
    UILabel *foodLabel;
    UILabel *calorieLabel;
    UILabel *dailyValueLabel;
    NSArray *foodArray;
}

@property (nonatomic, assign) IBOutlet UIPickerView *pickerView;
@property (nonatomic, assign) IBOutlet UILabel *foodLabel;
@property (nonatomic, assign) IBOutlet UILabel *calorieLabel;
@property (nonatomic, assign) IBOutlet UILabel *dailyValueLabel;


@end
