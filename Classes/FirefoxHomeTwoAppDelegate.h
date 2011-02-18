//
//  FirefoxHomeTwoAppDelegate.h
//  FirefoxHomeTwo
//
//  Created by Stefan Arentz on 11-02-18.
//  Copyright 2011 Arentz Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirefoxHomeTwoViewController;

@interface FirefoxHomeTwoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FirefoxHomeTwoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FirefoxHomeTwoViewController *viewController;

@end

