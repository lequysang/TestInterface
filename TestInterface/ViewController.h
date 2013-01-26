//
//  ViewController.h
//  TestInterface
//
//  Created by Quy Sang Le on 1/24/13.
//  Copyright (c) 2013 Quy Sang Le. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)clickButton:(UIButton *)sender forEvent:(UIEvent *)event;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UIView *myView;

@end
