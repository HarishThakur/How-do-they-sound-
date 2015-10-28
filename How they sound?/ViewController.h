//
//  ViewController.h
//  How they sound?
//
//  Created by Harish Singh on 28/09/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolBox/AudioToolBox.h>
//#import <CoreGraphics/CoreGraphics.h>

@interface ViewController : UIViewController
{
    NSObject *dragging;
    IBOutlet UIScrollView *scrollViewForAnimalDetails;
}

/**
 *  Properties for UIImage to get and set the sound of Animal
 */
@property (weak, nonatomic) IBOutlet UIImageView *imageForSoundOfCow;
@property (weak, nonatomic) IBOutlet UIImageView *imageForSoundOfDog;
@property (weak, nonatomic) IBOutlet UIImageView *imageForSoundOfCat;
@property (weak, nonatomic) IBOutlet UIImageView *imageForSoundOfChicken;
@property (weak, nonatomic) IBOutlet UIImageView *imageForSoundOfDuck;
@property (weak, nonatomic) IBOutlet UIImageView *imageForSoundOfSnake;


@property (weak, nonatomic) IBOutlet UILabel *labelForTip;
@end

