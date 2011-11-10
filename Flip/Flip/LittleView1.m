//
//  LittleView1.m
//  Flip
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LittleView1.h"

@implementation LittleView1

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blueColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
    // Drawing code
	UIImage *image = [UIImage imageNamed: @"n1.jpg"];	//100 by 100
	if (image == nil) {
		NSLog(@"could not find the image");
		return;
	}
    
	// Drawing code
	//CGFloat w = self.bounds.size.width;
	//CGFloat h = self.bounds.size.height;
    
    //upper left corner of image
	CGPoint point = CGPointMake(0,0
                                );
    
	[image drawAtPoint: point];
}

@end
