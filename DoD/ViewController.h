//
//  ViewController.h
//  TaT
//
//  Created by Tobias Friedenauer on 18.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

- (IBAction)backButton:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *UiTextDelay1;

@property (strong, nonatomic) IBOutlet UITextField *UiTextDelay2;

@property (strong, nonatomic) IBOutlet UITextField *UiTextDelay3;



@property (strong, nonatomic) IBOutlet UITextField *UiTextOpenTime1;

@property (strong, nonatomic) IBOutlet UITextField *UiTextOpenTime2;

@property (strong, nonatomic) IBOutlet UITextField *UiTextOpenTime3;



@property (strong, nonatomic) IBOutlet UISegmentedControl *choosenValveOutlet1;

@property (strong, nonatomic) IBOutlet UISegmentedControl *choosenValveOutlet2;

@property (strong, nonatomic) IBOutlet UISegmentedControl *choosenValveOutlet3;


- (IBAction)choosenValve1:(id)sender;

- (IBAction)choosenValve2:(id)sender;

- (IBAction)choosenValve3:(id)sender;

- (IBAction)Start:(id)sender;

@end
