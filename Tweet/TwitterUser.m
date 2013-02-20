//
//  TwitterUser.m
//  Tweet
//
//  Created by Gil Chen-Zion on 12/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TwitterUser.h"

@implementation TwitterUser

@synthesize username;
@synthesize tweet;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [username release];
    [tweet release];
    [super dealloc];
}

@end
