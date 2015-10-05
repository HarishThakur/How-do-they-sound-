//
//  ViewController.m
//  How they sound?
//
//  Created by Harish Singh on 28/09/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "ViewController.h"
#import "AnimalSound.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [scrollViewForAnimalDetails setScrollEnabled:YES];
    [scrollViewForAnimalDetails setContentSize:CGSizeMake(375, 800)];
    
    [self.imageForSoundOfCow setHidden:YES];
    [self.imageForSoundOfDog setHidden:YES];
    [self.imageForSoundOfCat setHidden:YES];
    [self.imageForSoundOfChicken setHidden:YES];
    [self.imageForSoundOfDuck setHidden:YES];
    [self.imageForSoundOfSnake setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  imageButtonPressedForCowSound sets text for cow sound in a label and also print it in console
 *
 *  @param sender is an object that sends message to imageButtonPressedForCowSound to pass the control
 */
- (IBAction)imageButtonPressedForCowSound:(id)sender {
    AnimalSound *cow = [[AnimalSound alloc] init];
    cow.name = @"Cow";
    cow.sound = @"Maaa...";
    [self.imageForSoundOfCow setHidden:NO];
    [self.imageForSoundOfDog setHidden:YES];
    [self.imageForSoundOfCat setHidden:YES];
    
    [self.imageForSoundOfChicken setHidden:YES];
    [self.imageForSoundOfDuck setHidden:YES];
    [self.imageForSoundOfSnake setHidden:YES];

    [_labelForTip setText:@""];
    [self displaySoundOfAnimal:cow];
}

/**
 *  imageButtonPressedForDogSound sets text for dog sound in a label and also print it in console
 *
 *  @param sender is an object that sends message to imageButtonPressedForDogSound to pass the control
 */
- (IBAction)imageButtonPressedForDogSound:(id)sender {
    AnimalSound *dog = [[AnimalSound alloc] init];
    dog.name = @"Dog";
    dog.sound = @"Bow...";
    [self.imageForSoundOfCow setHidden:YES];
    [self.imageForSoundOfDog setHidden:NO];
    [self.imageForSoundOfCat setHidden:YES];
    
    [self.imageForSoundOfChicken setHidden:YES];
    [self.imageForSoundOfDuck setHidden:YES];
    [self.imageForSoundOfSnake setHidden:YES];

    [_labelForTip setText:@""];
    [self displaySoundOfAnimal:dog];
}

/**
 *  imageButtonPressedForCatSound sets text for cat sound in a label and also print it in console
 *
 *  @param sender is an object that sends message to imageButtonPressedForCatSound to pass the control
 */
- (IBAction)imageButtonPressedForCatSound:(id)sender {
    AnimalSound *cat = [[AnimalSound alloc] init];
    cat.name = @"Cat";
    cat.sound = @"Meow...";
    [self.imageForSoundOfCow setHidden:YES];
    [self.imageForSoundOfDog setHidden:YES];
    [self.imageForSoundOfCat setHidden:NO];
    
    [self.imageForSoundOfChicken setHidden:YES];
    [self.imageForSoundOfDuck setHidden:YES];
    [self.imageForSoundOfSnake setHidden:YES];

    [_labelForTip setText:@""];
    [self displaySoundOfAnimal:cat];
}

- (IBAction)imageButtonPressedForChickenSound:(id)sender {
    AnimalSound *chicken = [[AnimalSound alloc] init];
    chicken.name = @"Chicken";
    chicken.sound = @"Cluck...";
    [self.imageForSoundOfCow setHidden:YES];
    [self.imageForSoundOfDog setHidden:YES];
    [self.imageForSoundOfCat setHidden:YES];
    
    [self.imageForSoundOfChicken setHidden:NO];
    [self.imageForSoundOfDuck setHidden:YES];
    [self.imageForSoundOfSnake setHidden:YES];
    
    [_labelForTip setText:@""];
    [self displaySoundOfAnimal:chicken];
}
- (IBAction)imageButtonPressedForDuckSound:(id)sender {
    AnimalSound *duck = [[AnimalSound alloc] init];
    duck.name = @"Duck";
    duck.sound = @"Quack...";
    [self.imageForSoundOfCow setHidden:YES];
    [self.imageForSoundOfDog setHidden:YES];
    [self.imageForSoundOfCat setHidden:YES];
    
    [self.imageForSoundOfChicken setHidden:YES];
    [self.imageForSoundOfDuck setHidden:NO];
    [self.imageForSoundOfSnake setHidden:YES];
    
    [_labelForTip setText:@""];
    [self displaySoundOfAnimal:duck];
}

- (IBAction)imageButtonPressedForSnakeSound:(id)sender {
    AnimalSound *snake = [[AnimalSound alloc] init];
    snake.name = @"Snake";
    snake.sound = @"Quack...";
    [self.imageForSoundOfCow setHidden:YES];
    [self.imageForSoundOfDog setHidden:YES];
    [self.imageForSoundOfCat setHidden:YES];
    
    [self.imageForSoundOfChicken setHidden:YES];
    [self.imageForSoundOfDuck setHidden:YES];
    [self.imageForSoundOfSnake setHidden:NO];
    
    [_labelForTip setText:@""];
    [self displaySoundOfAnimal:snake];
}

/**
 *  Method to perform action if touch began
 *
 *  @param touches is the random tap on screen
 *  @param event is an object of UIEvent that is responsible for event handling
 */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

/**
 *  Method to perform action if touch moves
 *
 *  @param touches is the random tap on screen
 *  @param event is an object of UIEvent that is responsible for event handling
 */
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

/**
 *  Method to perform action if touch ends
 *
 *  @param touches is the random tap on screen
 *  @param event is an object of UIEvent that is responsible for event handling
 */
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *aTouch in touches) {
        if (aTouch.tapCount >= 1) {
            // The view responds to the tap
            [self.imageForSoundOfCow setHidden:YES];
            [self.imageForSoundOfDog setHidden:YES];
            [self.imageForSoundOfCat setHidden:YES];
            [self.imageForSoundOfChicken setHidden:YES];
            [self.imageForSoundOfDuck setHidden:YES];
            [self.imageForSoundOfSnake setHidden:YES];
            [_labelForTip setText:@"(Click on any of the animal below)"];
        }
    }
    
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureUpdated:)];
//        tapGesture.delegate = self;
//        tapGesture.numberOfTapsRequired = 1;
//        tapGesture.numberOfTouchesRequired = 1;
//        [self.imageForSoundOfCow setHidden:YES];
//        [self.imageForSoundOfDog setHidden:YES];
//        [self.imageForSoundOfCat setHidden:YES];
//        [self.imageForSoundOfChicken setHidden:YES];
//        [self.imageForSoundOfDuck setHidden:YES];
//        [self.imageForSoundOfSnake setHidden:YES];
//        [_labelForTip setText:@"(Click on any of the animal below)"];
}

/**
 *  Method to perform action if touch is cancelled
 *
 *  @param touches is the random tap on screen
 *  @param event is an object of UIEvent that is responsible for event handling
 */
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
}


//- (void)tapGestureUpdated:(UITapGestureRecognizer *)tapGesture {
//    
//    
//    [self.imageForSoundOfCow setHidden:YES];
//    [self.imageForSoundOfDog setHidden:YES];
//    [self.imageForSoundOfCat setHidden:YES];
//    [self.imageForSoundOfChicken setHidden:YES];
//    [self.imageForSoundOfDuck setHidden:YES];
//    [self.imageForSoundOfSnake setHidden:YES];
//    [_labelForTip setText:@"(Click on any of the animal below)"];
//}


/**
 *  Method to log the name and sound of the animal in console
 *
 *  @param animal holds the name and sound of the animal
 */
- (void)displaySoundOfAnimal : (AnimalSound *)animal {
    NSLog(@"%@ sounds %@", animal.name,animal.sound);
}

@end
