//
//  WebViewCustomProtocolViewController.h
//  WebViewCustomProtocol
//
//  Created by Carlos on 4/14/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewCustomProtocolViewController : UIViewController <UIWebViewDelegate> {

  IBOutlet UIWebView *webView;
  NSURL              *baseURL;
  NSString           *javaScript;
  UIButton           *button;
  
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSURL              *baseURL;
@property (nonatomic, retain) NSString           *javaScript;
@property (nonatomic, retain) IBOutlet UIButton  *button;


@end

