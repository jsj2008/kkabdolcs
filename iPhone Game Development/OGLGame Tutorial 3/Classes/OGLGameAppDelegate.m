//
//  OGLGameAppDelegate.m
//  OGLGame
//
//  Created by Michael Daley on 14/03/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "OGLGameAppDelegate.h"
#import "EAGLView.h"

@implementation OGLGameAppDelegate

@synthesize window;
@synthesize glView;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	[glView mainGameLoop];
}


- (void)applicationWillResignActive:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}


- (void)dealloc {
	[window release];
	[glView release];
	[super dealloc];
}

@end
