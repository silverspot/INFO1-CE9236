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
	//Print the name of the class.  See the main function in main.m.
    Class class = [self class];
    NSString *string = NSStringFromClass(class);
	UIFont *font = [UIFont systemFontOfSize: 32];
	[string drawAtPoint: CGPointZero withFont: font];
}

@end
