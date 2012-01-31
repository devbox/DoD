//
//  ViewController.m
//  TaT
//
//  Created by Tobias Friedenauer on 18.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//das ist ein erster Kommentar von reen
//das ist ein erster Kommentar von nescher
//Kommentar gändert
//das ist ein erster Kommentar von ree

#import "ViewController.h"
#import "AppDelegate.h"
#import "Shot.h"

@implementation ViewController
@synthesize UiTextDelay1;
@synthesize UiTextDelay2;
@synthesize UiTextDelay3;
@synthesize UiTextOpenTime1;
@synthesize UiTextOpenTime2;
@synthesize UiTextOpenTime3;
@synthesize choosenValveOutlet1;
@synthesize choosenValveOutlet2;
@synthesize choosenValveOutlet3;

/*
int firstShotValve = 1;
int secondShotValve = 1;
int thirdShotValve = 1;

NSString *delay1;
*/

//Bei Enter wird die Tastatur ausgeblendet------------------------
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.UiTextDelay1 resignFirstResponder];
    [self.UiTextDelay2 resignFirstResponder];
    [self.UiTextDelay3 resignFirstResponder];
    [self.UiTextOpenTime1 resignFirstResponder];
    [self.UiTextOpenTime2 resignFirstResponder];
    [self.UiTextOpenTime3 resignFirstResponder];
    return YES;
}
//----------------------------------------------------------------

//Beim verlassen eines Textfeldes wird der Wert auf der Console ausgeben
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    /*
    NSLog(@"Delay 1 ist: %@", self.UiTextDelay1.text);
    NSLog(@"Delay 2 ist: %@", self.UiTextDelay2.text);
    NSLog(@"Delay 3 ist: %@", self.UiTextDelay3.text);
    NSLog(@"%i", choosenValveOutlet1.selectedSegmentIndex);
    
    //delay1 = self.UiTextDelay1.text;
    */
}
//-----------------------------------------------------------------------


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setUiTextDelay1:nil];
    [self setUiTextDelay2:nil];
    [self setUiTextDelay3:nil];
    [self setChoosenValveOutlet1:nil];
    [self setChoosenValveOutlet2:nil];
    [self setChoosenValveOutlet3:nil];
    [self setUiTextOpenTime1:nil];
    [self setUiTextOpenTime2:nil];
    [self setUiTextOpenTime3:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


//Beim Tippen auf den Hintergrund wird die Tastatur ausgeblendet--------------
- (IBAction)backButton:(id)sender 
{
    [self.UiTextDelay1 resignFirstResponder];
    [self.UiTextDelay2 resignFirstResponder];
    [self.UiTextDelay3 resignFirstResponder]; 
    [self.UiTextOpenTime1 resignFirstResponder];
    [self.UiTextOpenTime2 resignFirstResponder];
    [self.UiTextOpenTime3 resignFirstResponder];
    
}

/*
//----------------------------------------------------------------------------

//Auslesen des Wertes der Buttons-----------------------------------------

- (IBAction)choosenValve1:(id)sender {

}

//------------------------------------------------------------------------

- (IBAction)choosenValve2:(id)sender {
    }

//- (IBAction)choosenValve3:(id)sender {
  // }
 */

- (IBAction)Start:(id)sender {
    
    Shot *shot1 = [[Shot alloc] initWithValveId:choosenValveOutlet1.selectedSegmentIndex+1 valveDelay:[self.UiTextDelay1.text intValue] valveOpenTime:[self.UiTextOpenTime1.text intValue]];
    Shot *shot2 = [[Shot alloc] initWithValveId:choosenValveOutlet2.selectedSegmentIndex+1 valveDelay:[self.UiTextDelay2.text intValue] valveOpenTime:[self.UiTextOpenTime2.text intValue]];
    Shot *shot3 = [[Shot alloc] initWithValveId:choosenValveOutlet3.selectedSegmentIndex+1 valveDelay:[self.UiTextDelay3.text intValue] valveOpenTime:[self.UiTextOpenTime3.text intValue]];
    
    //NSLog(@"Es wird Ventil%i ausgelöst nach %ims Ventil%i, dann Ventil%i", shot1.valveId ,shot1.valveDelay , shot2.valveId, shot3.valveId);
    NSLog(@"%i", shot1.uebergabeWert);
    NSLog(@"%i", shot2.uebergabeWert);
    NSLog(@"%i", shot3.uebergabeWert);
    
    
}



@end
