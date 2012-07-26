//
//  QTKSubTabViewController.m
//  TabPrototype
//
//  Created by Lee, Kevin W. on 7/26/12.
//  Copyright (c) 2012 Q Technology Company. All rights reserved.
//

#import "QTKSubTabViewController.h"
@interface QTKSubTabViewController ()
@property (nonatomic, strong) NSArray *viewControllers;
@end

@implementation QTKSubTabViewController
@synthesize contentView;
@synthesize viewControllers;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect contentFrame = self.contentView.frame;
    UIViewController *vcOne = [[UIViewController alloc] init];
    vcOne.view.frame = contentFrame;
    vcOne.view.backgroundColor = [UIColor colorWithRed:203/255. green:182/255. blue:119/255. alpha:1];
    [self addChildViewController:vcOne];
    [self.contentView addSubview:vcOne.view];

    UIViewController *vcTwo = [[UIViewController alloc] init];
    vcTwo.view.frame = contentFrame;
    vcTwo.view.backgroundColor = [UIColor colorWithRed:203/255. green:182/255. blue:119/255. alpha:1];
    [self addChildViewController:vcTwo];

    UIViewController *vcThree = [[UIViewController alloc] init];
    vcThree.view.frame = contentFrame;
    vcThree.view.backgroundColor = [UIColor colorWithRed:203/255. green:182/255. blue:119/255. alpha:1];
    [self addChildViewController:vcThree];
    
    self.viewControllers = [NSArray arrayWithObjects:vcOne, vcTwo, vcThree, nil];
    
    // Do any additional setup after loading the view from its nib.
    
}

- (void)viewDidUnload
{
    [self setContentView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)button1Tapped:(id)sender {

}

- (IBAction)button2Tapped:(id)sender {
}

- (IBAction)button3Tapped:(id)sender {
}
@end
