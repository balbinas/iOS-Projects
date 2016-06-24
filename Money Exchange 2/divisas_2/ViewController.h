//
//  ViewController.h
//  divisas_2
//
//  Created by Balbina Santana on 2/22/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfCambio;
@property (weak, nonatomic) IBOutlet UITextField *tfPesos;
@property (weak, nonatomic) IBOutlet UITextField *tfDolares;

- (IBAction)pressCalculate:(id)sender;

- (IBAction)removeKeyb:(id)sender;
@end

