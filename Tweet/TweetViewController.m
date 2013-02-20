//
//  TweetViewController.m
//  Tweet
//
//  Created by Gil Chen-Zion on 12/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TwitterHelper.h"
#define kDefaultUsername @"ActuallyNPH"
#import "TweetViewController.h"
#import "SettingsViewController.h"

@implementation TweetViewController
@synthesize tweetTestView;
@synthesize usernameLabel;



- (void)updateInterface
{
    usernameLabel.text = [NSString stringWithFormat:@"@%@",twitterUser.username];
    tweetTestView.text = twitterUser.tweet;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSString *latestTweet =
    [TwitterHelper fetchLatestTweetForUsername:twitterUser.username];
    twitterUser.tweet = latestTweet;
    
    [self updateInterface];
}


- (void)awakeFromNib
{
    twitterUser = [[TwitterUser alloc] init];
    twitterUser.username = kDefaultUsername;
    twitterUser.tweet = @"";
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
    [usernameLabel release];
    [tweetTestView release];
    [twitterUser release];
    [super dealloc];
}

- (IBAction)settingsButtonTapped
{
    SettingsViewController *settingsViewController =
    [[SettingsViewController alloc] init];
    
    settingsViewController.modalTransitionStyle =
    UIModalTransitionStyleFlipHorizontal;
    
    settingsViewController.twitterUser = twitterUser;
    
    [self presentModalViewController:settingsViewController animated:YES];
    
    [settingsViewController release];
}


@end
