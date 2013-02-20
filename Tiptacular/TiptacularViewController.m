//
//  TiptacularViewController.m
//  Tiptacular
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TiptacularViewController.h"

@implementation TiptacularViewController

@synthesize checkAmountTextField;
@synthesize tipPercentTextField;
@synthesize numberOfPeopleTextField;
@synthesize tipLabel;
@synthesize totalLabel;
@synthesize totalPerPersonLabel;



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)updateTipTotals
{
    float checkAmount = [checkAmountTextField.text floatValue];
    float tipPercent = [tipPercentTextField.text floatValue];
    int numberOfPeople = [numberOfPeopleTextField.text intValue];
    
    tipPercent = tipPercent/100;
    
    float tipDue = checkAmount * tipPercent;
    float totalDue = checkAmount + tipDue;
    float totalDuePerPerson = 0;
    
    if(numberOfPeople > 0)
    {
        totalDuePerPerson = totalDue / numberOfPeople;
    }
    
    NSNumberFormatter *currencyFormatter = [[NSNumberFormatter alloc] init];
    [currencyFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    tipLabel.text = [currencyFormatter stringFromNumber:[NSNumber numberWithFloat:tipDue]];
    totalLabel.text = [currencyFormatter stringFromNumber:[NSNumber numberWithFloat:totalDue]];
    totalPerPersonLabel.text = [currencyFormatter stringFromNumber:[NSNumber numberWithFloat:totalDuePerPerson]];
    
    [currencyFormatter release];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self updateTipTotals];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    checkAmountTextField.delegate = self;
    tipPercentTextField.delegate = self;
    numberOfPeopleTextField.delegate = self;

}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc
{
    [checkAmountTextField release];
    [tipPercentTextField release];
    [numberOfPeopleTextField release];
    [tipLabel release];
    [totalLabel release];
    [totalPerPersonLabel release];
    [super dealloc];
}

@end
