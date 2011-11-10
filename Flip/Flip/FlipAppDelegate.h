//
//  FlipAppDelegate.h
//  Flip
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BigView;

@interface FlipAppDelegate: UIResponder <UIApplicationDelegate> {
	BigView *bigView;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end
