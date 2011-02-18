//  FirefoxHomeTwoViewController.m

#import "FirefoxHomeTwoViewController.h"

@implementation FirefoxHomeTwoViewController

@synthesize webView = _webView;

- (void) viewDidLoad
{
	_webView.delegate = self;
}

- (void) viewDidAppear:(BOOL)animated
{
	[_webView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: @"https://fxho.me"]]];
}

#pragma mark -

- (BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
	BOOL result = YES;
	
	if (navigationType == UIWebViewNavigationTypeLinkClicked || navigationType == UIWebViewNavigationTypeOther) {
		NSURL* url = [request URL];
		if ([[url host] isEqualToString: @"fxho.me"] == NO) {
			[[UIApplication sharedApplication] openURL: url];
			return NO;
		}
	}
	
	return result;
}

@end
