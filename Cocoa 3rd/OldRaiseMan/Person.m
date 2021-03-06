//
//  Person.m
//  OldRaiseMan
//
//  Created by Seonghyeon Choe on 1/8/10.
//  Copyright 2010 kkabdol. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init
{
	[super init];
	expectedRaise = 0.0;
	personName = @"New Person";
	return self;
}

- (void)dealloc
{
	[personName release];
	[super dealloc];
}

@synthesize personName;
@synthesize expectedRaise;

- (void)setNilValueForKey:(NSString *)key
{
	if ([key isEqual:@"expectedRaise"]) {
		[self setExpectedRaise:0.0];
	} else {
		[super setNilValueForKey:key];
	}
}

@end
