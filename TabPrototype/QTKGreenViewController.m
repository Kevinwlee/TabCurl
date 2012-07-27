//
//  QTKGreenViewController.m
//  TabPrototype
//
//  Created by Kevin Lee on 7/20/12.
//  Copyright (c) 2012 Q Technology Company. All rights reserved.
//

#import "QTKGreenViewController.h"

@interface QTKGreenViewController ()

@end

@implementation QTKGreenViewController
@synthesize webView;

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
    self.webView.delegate = self;
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.invesco.dev.invesco.net/mobile/ipad/about-invesco.html"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];    
    self.webView.scrollView.bounces = NO;
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"Error %@", error);
}
@end
