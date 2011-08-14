//
//  WebViewCustomProtocolAppDelegate.h
//  WebViewCustomProtocol
//
//  Created by Carlos on 4/14/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewCustomProtocolViewController;

@interface WebViewCustomProtocolAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WebViewCustomProtocolViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WebViewCustomProtocolViewController *viewController;

@end

