//
//  AnimateViewController.m
//  How they sound?
//
//  Created by Harish Singh on 23/10/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "AnimateViewController.h"
#define IMAGE_COUNT 10
@interface AnimateViewController () {
    UIImage *image;
}

@end

@implementation AnimateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    }
- (IBAction)buttonPressedForRoboAnimation:(id)sender {
    NSMutableArray *imageArray = [[NSMutableArray alloc]initWithCapacity:IMAGE_COUNT];
    for (int i = 1; i <= IMAGE_COUNT; i++) {
        [imageArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"robo%d",i]]];
        _imageView.animationImages = [NSArray arrayWithArray:imageArray];
        _imageView.animationDuration = 2;
        [_imageView startAnimating ];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
