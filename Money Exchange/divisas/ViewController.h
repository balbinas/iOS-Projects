//
//  ViewController.h
//  divisas
//
//  Created by Balbina Santana on 1/15/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfTipoCambio;

@property (weak, nonatomic) IBOutlet UITextField *tfPesos;

@property (weak, nonatomic) IBOutlet UITextField *tfDolares;

- (IBAction)oprimioBoton:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imagen;


@end

