//
//  QTKViewController.m
//  TabPrototype
//
//  Created by Kevin Lee on 7/20/12.
//  Copyright (c) 2012 Q Technology Company. All rights reserved.
//

#import "QTKViewController.h"
#import "QTKYellowViewController.h"
#import "QTKBlueViewController.h"
#import "QTKGreenViewController.h"

@interface QTKViewController ()
@end

@implementation QTKViewController
@synthesize viewControllers;
@synthesize pageViewController;
@synthesize pageViewContainer;
@synthesize selectedIndex;
@synthesize blueButton;
@synthesize yellowButton;
@synthesize greenButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    QTKBlueViewController *blue = [[QTKBlueViewController alloc] initWithNibName:@"QTKBlueViewController" bundle:nil];
    UINavigationController *blueNav = [[UINavigationController alloc] initWithRootViewController:blue];
    QTKYellowViewController *yellow = [[QTKYellowViewController alloc] initWithNibName:@"QTKYellowViewController" bundle:nil];
    QTKGreenViewController *green = [[QTKGreenViewController alloc] initWithNibName:@"QTKGreenViewController" bundle:nil];
    self.viewControllers = [NSArray arrayWithObjects:blueNav, yellow, green, nil];
    NSDictionary *options = [NSDictionary dictionaryWithObject:[NSNumber numberWithInt:UIPageViewControllerSpineLocationMin] forKey:UIPageViewControllerOptionSpineLocationKey];
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationVertical options:options];
    [self.pageViewContainer addSubview:self.pageViewController.view];
    self.pageViewController.view.frame = self.pageViewContainer.frame;
}

- (void)viewDidUnload {
    [self setPageViewController:nil];
    [self setPageViewContainer:nil];
    [self setBlueButton:nil];
    [self setYellowButton:nil];
    [self setGreenButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (IBAction)showBlue:(id)sender {

    self.blueButton.selected = YES;
    self.yellowButton.selected = NO;
    self.greenButton.selected = NO;

    [self.pageViewController setViewControllers:[NSArray arrayWithObject:[self.viewControllers objectAtIndex:0]] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:^(BOOL finished) {
        NSLog(@"blue was shown");
        self.selectedIndex = 0;

    }];

}

- (IBAction)showYellow:(id)sender {
    self.blueButton.selected = NO;
    self.yellowButton.selected = YES;
    self.greenButton.selected = NO;

    NSInteger transitionDirection = UIPageViewControllerNavigationDirectionForward;
    if (1 <= self.selectedIndex ) {
        transitionDirection = UIPageViewControllerNavigationDirectionReverse;
    }
    
    [self.pageViewController setViewControllers:[NSArray arrayWithObject:[self.viewControllers objectAtIndex:1]] direction:transitionDirection animated:YES completion:^(BOOL finished) {
        NSLog(@"yellow was shown");
        self.selectedIndex = 1;

    }];

}

- (IBAction)showGreen:(id)sender {
    self.blueButton.selected = NO;
    self.yellowButton.selected = NO;
    self.greenButton.selected = YES;

    [self.pageViewController setViewControllers:[NSArray arrayWithObject:[self.viewControllers objectAtIndex:2]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:^(BOOL finished) {
        NSLog(@"green was shown");
        self.selectedIndex = 2;
    }];

}


@end
