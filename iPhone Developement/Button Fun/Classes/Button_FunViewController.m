//
//  Button_FunViewController.m
//  Button Fun
//
//  Created by Seonghyeon Choe on 3/2/10.
//  Copyright kkabdol 2010. All rights reserved.
//

#import "Button_FunViewController.h"

@implementation Button_FunViewController
@synthesize statusText;

- (IBAction)buttonPressed:(id)sender
{
	NSString *newText = [[NSString alloc] initWithFormat:@"%@ button pressed.", [sender titleForState:UIControlStateNormal]];
	// NSString *newText = [NSString stringWithFormat:@"%@ button pressed.", title];	// convenience or factory method, will be autoreleased
	statusText.text = newText;
	//[statusText setText:newText];
	[newText release];
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[statusText release];	// because it has been retained
    [super dealloc];
}

@end
