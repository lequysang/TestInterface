//
//  ViewController.m
//  TestInterface
//
//  Created by Quy Sang Le on 1/24/13.
//  Copyright (c) 2013 Quy Sang Le. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.myButton setTitle:@"TEST" forState:UIControlStateNormal];
    [self.myButton setFrame:CGRectMake(20, 20, 100, 100)];
    NSLog(@"BUTTON origin %f-%f",self.myButton.frame.origin.x,self.myButton.frame.origin.y);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(UIButton *)sender forEvent:(UIEvent *)event {
    [UIView animateWithDuration:0.75 animations:^(void){
        UIView *button = (UIView *)sender;
        UITouch *touch = [[event touchesForView:sender] anyObject];
        CGPoint location = [touch locationInView:self.view];
        NSLog(@"Location in button: %f, %f", location.x, location.y);
        [sender setTransform:CGAffineTransformMakeScale(2.0, 2.0)];
        self.myButton.center = location;

    } completion:^(BOOL finished) {
        [sender setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
    }];

}

//- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
//    
//    return YES;
//}
//- (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
//    return YES;
//}
//- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
//    
//}
//- (void)cancelTrackingWithEvent:(UIEvent *)event{
//    
//}

@end
