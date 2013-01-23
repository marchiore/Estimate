//
//  ViewController.m
//  Estimate
//
//  Created by Matheus Marchiore on 1/4/13.
//  Copyright (c) 2013 Matheus Marchiore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)end:(id)sender {
    [self.view endEditing:YES];
}

-(IBAction) slideFrameUp;
{
    [self slideFrame:YES];
}

-(IBAction) slideFrameDown;
{
    [self slideFrame:NO];
}

-(void) slideFrame:(BOOL) up
{
    const int movementDistance = 50; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}


-(IBAction)selecionarBotao:(id)sender{
    //NSLog(@"%i",_segment.selectedSegmentIndex);
    long int iTamDown = _labelTamanho.text.intValue;
    long int iTempDown = 0;
    if (_segment.selectedSegmentIndex == 0) { //Kb
        iTamDown = (iTamDown * 1024);
        //128Kb
        iTempDown = iTamDown / 128; //Tempo em Segundos
        _label1.text = [NSString stringWithFormat:@"%ld horas", (iTempDown / 60) / 60];
        
        
    } else if (_segment.selectedSegmentIndex == 1) { //Mb
        iTamDown = (iTamDown * 1024) * 1024;
        //128Kb
        iTempDown = iTamDown / 128; //Tempo em Segundos
        _label1.text = [NSString stringWithFormat:@"%ld horas", (iTempDown / 60) / 60];

        
    } else if (_segment.selectedSegmentIndex == 2) { //Gb
        iTamDown = ((iTamDown * 1024) * 1024) * 1024;
        //128Kb
        iTempDown = iTamDown / 128; //Tempo em Segundos
        _label1.text = [NSString stringWithFormat:@"%ld Horas", (iTempDown / 60) / 60];

        
    } else if (_segment.selectedSegmentIndex == 3) { //Tb
        iTamDown = (((iTamDown * 1024) * 1024) * 1024) * 1024;
        //128Kb
        iTempDown = iTamDown / 128; //Tempo em Segundos
        _label1.text = [NSString stringWithFormat:@"%ld Horas", (iTempDown / 60) / 60];

        
    }
}

@end
