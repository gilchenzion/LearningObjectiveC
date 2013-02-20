//
//  FontsViewController.m
//  Fonts
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FontsViewController.h"

@implementation FontsViewController

@synthesize resultLabel;
@synthesize fontNameControl;
@synthesize fontSizeNumberLabel;
@synthesize fontSizeSlider;
@synthesize capitalizedSwitch;

- (void)updateText
{
    //grab the string
    NSString *text = resultLabel.text;
    
    //change the string based on the switch setting
    if (capitalizedSwitch.on)
    {
        text = [text capitalizedString];
    } else {
        text = [text lowercaseString];
    }
    
    //update the label text property
    resultLabel.text = text;
}

- (void)updateFont
{
    //get the font size
    int fontSize = fontSizeSlider.value;
    
    //update the displayed font size number
    NSString *fontSizeString = [NSString stringWithFormat:@"%d",fontSize];
    fontSizeNumberLabel.text = fontSizeString;
    
    //get the font name
    int selectedFontIndex = fontNameControl.selectedSegmentIndex;
    NSString *fontName = [fontNameControl titleForSegmentAtIndex:selectedFontIndex];
    UIFont *newFont = [UIFont fontWithName:fontName size:fontSize];
    
    //apply the newfont to the name label
    resultLabel.font = newFont;
}

- (void)updateInterface
{
    [self updateText];
    [self updateFont];
}

- (IBAction)fontNameControlValueChanged:(id)sender
{
    [self updateInterface];
}

- (IBAction)fontSizeSliderValueChanged:(id)sender
{
    [self updateInterface];
}

- (IBAction)capitalizedSwichValueChanged:(id)sender
{
    [self updateInterface];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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
    [resultLabel release];
    [fontNameControl release];
    [fontSizeNumberLabel release];
    [fontSizeSlider release];
    [capitalizedSwitch release];
    [super dealloc];
}

@end
