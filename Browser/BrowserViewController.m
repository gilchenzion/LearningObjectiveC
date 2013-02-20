//
//  BrowserViewController.m
//  Browser
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BrowserViewController.h"

@implementation BrowserViewController

@synthesize webView;
@synthesize spinnerView;
@synthesize toolbar;

- (IBAction)bookmarkItemTapped:(id)sender
{
    UIActionSheet *actionSheet =
    [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Apple",@"XKCD",@"Dr McNinja", nil];
    [actionSheet showFromToolbar:toolbar];
    [actionSheet release];
}



- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [spinnerView stopAnimating];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [spinnerView startAnimating];
}

- (void)loadWebPageWithString: (NSString *)urlString
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

#pragma mark -
#pragma mark UIActionSheetDelegate methods

- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
        [self loadWebPageWithString:@"http://www.apple.com"];
    } else if (buttonIndex == 1)
    {
        [self loadWebPageWithString:@"http://www.xkcd.com"];    
    } else if (buttonIndex == 2)
    {
        [self loadWebPageWithString:@"http://www.drmcninja.com"];  
    }
}


- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error loading web page" message:[error localizedDescription] delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alertView show];
    [alertView release];
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
    webView.delegate = self;
    [self loadWebPageWithString:@"http://troybrant.net"];
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
    [webView release];
    [super dealloc];
}

@end
