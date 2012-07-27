//
//  QTKYellowViewController.m
//  TabPrototype
//
//  Created by Kevin Lee on 7/20/12.
//  Copyright (c) 2012 Q Technology Company. All rights reserved.
//

#import "QTKYellowViewController.h"

@interface QTKYellowViewController ()
- (void)swipeLeftRecognized:(UIGestureRecognizer *)sender;
- (void)swipeRightRecognized:(UIPanGestureRecognizer *)sender;
- (void)panRecognized:(UIPanGestureRecognizer *)sender;
@end

@implementation QTKYellowViewController
@synthesize trayView;

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
    CGRect frame = self.trayView.frame;    
    CGFloat offset = -(self.trayView.frame.size.width -44);
    frame.origin.x = offset;
    self.trayView.frame = frame;    
    NSLog(@"%@", self.trayView);

    // Do any additional setup after loading the view from its nib.
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panRecognized:)];
    [self.trayView addGestureRecognizer:pan];
}

- (void)viewDidUnload {
    [self setTrayView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (void)swipeLeftRecognized:(UIGestureRecognizer *)sender {
    [UIView animateWithDuration:.1 animations:^{
        CGRect frame = self.trayView.frame;
        frame.origin.x = - (frame.size.width -44);
        self.trayView.frame = frame;        
    }];
}

- (void)swipeRightRecognized:(UIGestureRecognizer *)sender {    
    [UIView animateWithDuration:.1 animations:^{
        CGRect frame = self.trayView.frame;
        frame.origin.x = 0;
        self.trayView.frame = frame;        
    }];
}

- (void)panRecognized:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:self.view];
    if (-256 <= sender.view.frame.origin.x + translation.x & sender.view.frame.origin.x + translation.x<=0) {
        sender.view.center = CGPointMake(sender.view.center.x + translation.x, sender.view.center.y);        
    }    
    [sender setTranslation:CGPointMake(0, 0) inView:self.view];   
    
    CGPoint velocity = [sender velocityInView:self.view];
    switch (sender.state) {
        case UIGestureRecognizerStateEnded:
            if (velocity.x > 0) {
                [self swipeRightRecognized:sender];
            } else {
                [self swipeLeftRecognized:sender];
            }
            break;            
        default:
            break;
    }
}

@end
