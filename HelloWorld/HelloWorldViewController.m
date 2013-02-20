//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Gil Chen-Zion on 12/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController
@synthesize textLabel;

- (void)dealloc
{
[textLabel release];
[super dealloc];
}

- (void) changeTheTextOfTheLabel
{
    [textLabel setText:@"Hello, World!"];
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

@end
