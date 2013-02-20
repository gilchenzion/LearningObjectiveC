//
//  TiptacularViewController.h
//  Tiptacular
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TiptacularViewController : UIViewController 
    <UITextFieldDelegate>
{
    
    UITextField *checkAmountTextField;
    UITextField *tipPercentTextField;
    UITextField *numberOfPeopleTextField;
    UILabel *tipLabel;
    UILabel *totalLabel;
    UILabel *totalPerPersonLabel;    
}

@property (nonatomic, retain) IBOutlet UITextField *checkAmountTextField;
@property (nonatomic, retain) IBOutlet UITextField *tipPercentTextField;
@property (nonatomic, retain) IBOutlet UITextField *numberOfPeopleTextField;
@property (nonatomic, retain) IBOutlet UILabel *tipLabel;
@property (nonatomic, retain) IBOutlet UILabel *totalLabel;
@property (nonatomic, retain) IBOutlet UILabel *totalPerPersonLabel;

@end
