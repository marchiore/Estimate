//
//  ViewController.h
//  Estimate
//
//  Created by Matheus Marchiore on 1/4/13.
//  Copyright (c) 2013 Matheus Marchiore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *label1;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UITextField *labelTamanho;

-(IBAction)selecionarBotao:(id)sender;

@end
