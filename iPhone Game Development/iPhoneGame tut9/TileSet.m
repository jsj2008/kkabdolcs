//
//  TileSet.m
//  iPhoneGame
//
//  Created by Seonghyeon Choe on 2/3/10.
//  Copyright 2010 kkabdol. All rights reserved.
//

#import "TileSet.h"


@implementation TileSet

@synthesize tileSetID;
@synthesize name;
@synthesize firstGID;
@synthesize lastGID;
@synthesize tileWidth;
@synthesize tileHeight;
@synthesize spacing;
@synthesize tiles;
@synthesize tilesetProperties;


- (id)initWithImageNamed:(NSString*)image name:(NSString*)tileSetName tileSetID:(int)tsID firstGID:(int)first tileWidth:(int)width tileHeight:(int)height spacing:(int)space {
	if (self != nil) {
		tiles = [[SpriteSheet alloc] initWithImageNamed:image spriteWidth:width spriteHeight:height spacing:space imageScale:1.0f];
		tileSetID = tsID;
		name = tileSetName;
		firstGID = first;
		horizontalTiles = [tiles horizontal];
		verticalTiles = [tiles vertical];
		lastGID = horizontalTiles * verticalTiles + firstGID - 1;
		tileWidth = width;
		tileHeight = height;
		spacing = space;
	}
	return self;
}


- (BOOL)containsGlobalID:(int)globalID {
	// If the global ID which has been passed is within the global IDs in this
	// tileset then return YES
	return (globalID >= firstGID) && (globalID <= lastGID);
}


- (int)getTileX:(int)tileID {
	return tileID % horizontalTiles;
}


- (int)getTileY:(int)tileID {
	return tileID / horizontalTiles;
}


- (void)dealloc {
	[tiles release];
	[tilesetProperties release];
	[super dealloc];
}

@end
