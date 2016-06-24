//
//  ViewController.h
//  ejercicioQuartz
//
//  Created by Balbina Santana on 3/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "claseVista.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet claseVista *vista;

@property (weak, nonatomic) IBOutlet UISwitch *swCir;
@property (weak, nonatomic) IBOutlet UISwitch *swRec;
@property (weak, nonatomic) IBOutlet UISwitch *swTri;
-(IBAction) cambio:(id)sender;

@end

