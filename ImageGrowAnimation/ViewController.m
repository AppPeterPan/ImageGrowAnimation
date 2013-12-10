//
//  ViewController.m
//  ImageGrowAnimation
//
//  Created by Peter Pan on 12/10/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *rainBowBarImageView;
    int bottomY;
}
@end

@implementation ViewController

- (IBAction)growButtonPressed:(id)sender {
    
    [UIView animateWithDuration:1 animations:^{
        rainBowBarImageView.frame = CGRectMake(100, bottomY-160, 50, 160);

    }];

}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    bottomY = 250;
    
    rainBowBarImageView = [[UIImageView alloc] initWithImage:
						   [UIImage imageNamed:@"RainbowMeter.png"]];
	rainBowBarImageView.clipsToBounds = YES;
	rainBowBarImageView.contentMode = UIViewContentModeBottom;
	rainBowBarImageView.frame = CGRectMake(100, bottomY-50, 50, 50);
    
    [self.view addSubview:rainBowBarImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
