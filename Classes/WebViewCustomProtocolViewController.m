//
//  WebViewCustomProtocolViewController.m
//  WebViewCustomProtocol
//
//  Created by Carlos on 4/14/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "WebViewCustomProtocolViewController.h"

@implementation WebViewCustomProtocolViewController

@synthesize webView;
@synthesize baseURL;
@synthesize javaScript;
@synthesize button;





// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];
  [self.webView setDelegate:self];
  
  NSString *imagePath = [[NSBundle mainBundle] resourcePath];
  imagePath = [imagePath stringByReplacingOccurrencesOfString:@"/" withString:@"//"];
  imagePath = [imagePath stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
  [self setBaseURL:[NSURL URLWithString: [NSString stringWithFormat:@"file:/%@//",imagePath]]];
  
  NSString *html = @"<html>"
  "<head>"
  "</head>"
  "<body>"
  "<a href=\"changeit://dosomething?arg1=foo&arg2=bar&arg3=this+that\">"
  "<span class=\"changethis\">ON</span></a>"
  "<p><a href=\"http://www.yahoo.com/\">Yahoo!</a></p>"
  "</body>"
  "</html>";

  [self.webView loadHTMLString:html baseURL:self.baseURL];
  
  self.javaScript = @"var elms = document.getElementsByClassName('changethis');\n"
  "var begin=0;\n"
  "alert('got ' + elms[0]);"
  "var end=elms.length;\n"
  "    for (var i=begin; i < end; i++) {\n"
  "      elms[i].innerHTML = 'OFF';\n"
  "}";
  
  
  
}


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
  if (navigationType == UIWebViewNavigationTypeLinkClicked) {
    NSURL *url = [request URL];
    if ([[url scheme] isEqualToString:@"changeit"]) {
      // do something custom here
      [self.webView stringByEvaluatingJavaScriptFromString:self.javaScript];
      [self.button setEnabled:NO];
    }
    else{
      [self.webView loadRequest:request];
    }
    return NO;
  }
  return YES;
}




- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
