//
//  QTKSubTabViewController.h
//  TabPrototype
//
//  Created by Lee, Kevin W. on 7/26/12.
//  Copyright (c) 2012 Q Technology Company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QTKSubTabViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *contentView;

- (IBAction)button1Tapped:(id)sender;
- (IBAction)button2Tapped:(id)sender;
- (IBAction)button3Tapped:(id)sender;

@end
