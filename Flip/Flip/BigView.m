//
//  BigView.m
//  Flip
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "BigView.h"
#import "LittleView0.h"
#import "LittleView1.h"
#import "LittleView2.h"
#import "LittleView3.h"

@implementation BigView

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code

		//Don't bother with a background color--
		//this BigView is entirely occupied by a LittleView.
		
		views = [NSArray arrayWithObjects:
			[[LittleView0 alloc] initWithFrame: self.bounds],
			[[LittleView1 alloc] initWithFrame: self.bounds],
            [[LittleView2 alloc] initWithFrame: self.bounds],        
            [[LittleView3 alloc] initWithFrame: self.bounds],     
			nil
		];

		index = 0;	//LittleView0 is the one that's initially visible.
		[self addSubview: [views objectAtIndex: index]];
	}
	return self;
}

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	
	/*
	Assume a swipe has just ended.  A more complicated program could
	distinguish between left vs. rights wipes, and perform a
	UIViewAnimationOptionTransitionFlipFromLeft or a
	UIViewAnimationOptionTransitionFlipFromRight.

	In UIViewAnimationOptionTransitionFlipFromLeft, the left edge moves
	to the right, and the right edge moves away from the user and to the
	left.
	*/

	//NSUInteger newIndex = 1 - index;	//toggle the index
    
    NSUInteger newIndex = 0;
    
    if (index < 3 )
    {
        newIndex = index+1;
        
    }else
    {
        newIndex = 0;
    }
        

	[UIView transitionFromView: [views objectAtIndex: index]
		toView: [views objectAtIndex: newIndex]
		duration: 2.25
		options: UIViewAnimationOptionTransitionCurlUp
		completion: NULL
	];

	index = newIndex;
    NSLog(@"self.subviews.count == %u", self.subviews.count);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
}
*/

@end
