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


-(IBAction)selecionarBotao:(id)sender{
    if(controllerSegmented.selectedSegmentIndex == 0){  //Kb
    
    }else if(controllerSegmented.selectedSegmentIndex == 1){ //Mb
    
    }else if(controllerSegmented.selectedSegmentIndex == 2){ //Gb
        
    }else if(controllerSegmented.selectedSegmentIndex == 3){ //Tb
        
    }
}

@end
