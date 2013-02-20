//
//  BrowserViewController.h
//  Browser
//
//  Created by Gil Chen-Zion on 12/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowserViewController : UIViewController
    <UIWebViewDelegate, UIActionSheetDelegate>
{
    UIWebView *webView;
    UIActivityIndicatorView *spinnerView;
    UIToolbar *toolbar;
}

@property (nonatomic, assign) IBOutlet UIWebView *webView;
@property (nonatomic, assign) IBOutlet UIActivityIndicatorView *spinnerView;
@property (nonatomic, assign) IBOutlet UIToolbar *toolbar;

- (IBAction)bookmarkItemTapped:(id)sender;

@end
