//
//  Frame.h
//  OGLGame
//
//  Created by Michael Daley on 19/04/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Image.h"

@interface Frame : NSObject {
	// The image this frame of animation will display
	Image *frameImage;
	// How long the frame should be displayed for
	float frameDelay;
}

@property(nonatomic, assign)float frameDelay;
@property(nonatomic, retain)Image *frameImage;

- (id)initWithImage:(Image*)image delay:(float)delay;
@end
