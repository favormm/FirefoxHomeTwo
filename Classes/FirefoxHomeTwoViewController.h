//  FirefoxHomeTwoViewController.h

#import <UIKit/UIKit.h>

@interface FirefoxHomeTwoViewController : UIViewController <UIWebViewDelegate> {
	UIWebView* _webView;
}

@property (nonatomic,assign) IBOutlet UIWebView* webView;

@end

