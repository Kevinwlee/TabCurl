//
//  QTKBlueViewController.m
//  TabPrototype
//
//  Created by Kevin Lee on 7/20/12.
//  Copyright (c) 2012 Q Technology Company. All rights reserved.
//

#import "QTKBlueViewController.h"

@interface QTKBlueViewController ()

@end

@implementation QTKBlueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)pusheTapped:(id)sender {
    
    QTKSubTabViewController *vc = [[QTKSubTabViewController alloc] initWithNibName:@"QTKSubTabViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
