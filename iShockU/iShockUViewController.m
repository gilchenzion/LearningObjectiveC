//
//  iShockUViewController.m
//  iShockU
//
//  Created by Gil Chen-Zion on 12/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iShockUViewController.h"

@implementation iShockUViewController

@synthesize button;
@synthesize label;

- (IBAction)buttonTouchDown:(id)sender
{
    label.text = @"You just killed five starving african children!";
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor lightGrayColor];
    UIImage *img = [UIImage imageNamed:@"lightning-bolt.png"];
    [button setImage:img forState:UIControlStateNormal];
}

- (IBAction)buttonTouchUp:(id)sender
{
    label.text = @"Don't touch this button or else...";
    UIImage *img = [UIImage imageNamed:@"red-button.png"];
    label.backgroundColor = [UIColor whiteColor];
    [button setImage:img forState:UIControlStateNormal];
    
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
    [button release];
    [label release];
    [super dealloc];
}

@end
