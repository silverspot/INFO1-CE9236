//
//  View.m
//  Swipe
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		textView = [[UITextView alloc] initWithFrame: self.bounds];
		textView.backgroundColor = [UIColor whiteColor];
		textView.font = [UIFont systemFontOfSize: 20];
		textView.editable = NO;	//Don't pop up a keyboard.
		[self addSubview: textView];

		UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]
			initWithTarget: self action: @selector(swipe:)
		];
		recognizer.direction = UISwipeGestureRecognizerDirectionRight;
		[self addGestureRecognizer: recognizer];

		recognizer = [[UISwipeGestureRecognizer alloc]
			initWithTarget: self action: @selector(swipe:)
		];
		recognizer.direction = UISwipeGestureRecognizerDirectionLeft;
		[self addGestureRecognizer: recognizer];

		recognizer = [[UISwipeGestureRecognizer alloc]
			initWithTarget: self action: @selector(swipe:)
		];
		recognizer.direction = UISwipeGestureRecognizerDirectionUp;
		[self addGestureRecognizer: recognizer];

		recognizer = [[UISwipeGestureRecognizer alloc]
			initWithTarget: self action: @selector(swipe:)
		];
		recognizer.direction = UISwipeGestureRecognizerDirectionDown;
		[self addGestureRecognizer: recognizer];
		
	}
	return self;
}

- (void) swipe: (UISwipeGestureRecognizer *) recognizer {
	CGPoint p = [recognizer locationInView: self];

	NSString *direction = @"unknown";
	if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
		direction = @"→";
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
		direction = @"←";
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionUp) {
		direction = @"↑";
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
		direction = @"↓";
	}

	textView.text = [NSString stringWithFormat:
		@"direction: %@\n"
		@"start: (%d, %d)\n"
		@"number of touches: %u\n",
		direction,
		(int)p.x, (int)p.y,
		recognizer.numberOfTouches
	];

	for (NSUInteger i = 0; i < recognizer.numberOfTouches; ++i) {
		CGPoint p = [recognizer locationOfTouch: i inView: self];

		textView.text = [textView.text stringByAppendingFormat:
			@"touch %u start: (%d, %d)\n",
			i, (int)p.x, (int)p.y
		];
	}
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
