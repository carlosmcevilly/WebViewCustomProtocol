//
//  WebViewCustomProtocolAppDelegate.m
//  WebViewCustomProtocol
//
//  Created by Carlos on 4/14/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "WebViewCustomProtocolAppDelegate.h"
#import "WebViewCustomProtocolViewController.h"

@implementation WebViewCustomProtocolAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
