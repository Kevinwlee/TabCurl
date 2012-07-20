//
//  QTKViewController.h
//  TabPrototype
//
//  Created by Kevin Lee on 7/20/12.
//  Copyright (c) 2012 Q Technology Company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QTKViewController : UIViewController

@property (nonatomic, strong) NSArray *viewControllers;
@property (nonatomic, strong) UIPageViewController *pageViewController;
@property (weak, nonatomic) IBOutlet UIView *pageViewContainer;

@property (nonatomic) NSUInteger selectedIndex;

@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet UIButton *yellowButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;

- (IBAction)showBlue:(id)sender;
- (IBAction)showYellow:(id)sender;
- (IBAction)showGreen:(id)sender;

@end
