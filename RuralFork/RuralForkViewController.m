//
//  RuralForkViewController.m
//  RuralFork
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RuralForkViewController.h"

@implementation RuralForkViewController

@synthesize pickerView;
@synthesize foodLabel;
@synthesize calorieLabel;
@synthesize dailyValueLabel;

#pragma mark -
#pragma mark UIPickerViewDataSource methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [foodArray count];
}

#pragma mark -
#pragma UIPickerViewDelegate methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSDictionary *foodInfo = [foodArray objectAtIndex:row];
    return [foodInfo objectForKey:@"name"];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSDictionary *foodInfo = [foodArray objectAtIndex:row];
    
    NSString *name = [foodInfo objectForKey:@"name"];
    NSNumber *calories = [foodInfo objectForKey:@"calories"];
    
    int dailyValue = [calories floatValue] / 2000 * 100;
    
    foodLabel.text = name;
    calorieLabel.text = [NSString stringWithFormat:@"%@ calories", calories];
    dailyValueLabel.text = [NSString stringWithFormat:@"%d%% of a 2000 calorie diet", dailyValue];
    
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
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"Food" ofType:@"plist"];
    foodArray = [[NSArray alloc] initWithContentsOfFile:path];
    
    pickerView.delegate = self;
    pickerView.dataSource = self;
    
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

- (void) dealloc
{
    [pickerView release];
    [foodLabel release];
    [calorieLabel release];
    [dailyValueLabel release];
    [foodArray release];
    [super dealloc];
}

@end
