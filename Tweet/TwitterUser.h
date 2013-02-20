//
//  TwitterUser.h
//  Tweet
//
//  Created by Gil Chen-Zion on 12/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwitterUser : NSObject
{
    NSString *username;
    NSString *tweet;
}

@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *tweet;

@end
