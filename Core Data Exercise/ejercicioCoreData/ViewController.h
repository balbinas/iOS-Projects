//
//  ViewController.h
//  ejercicioCoreData
//
//  Created by Balbina Santana on 3/26/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfId;
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfSueldo;

@property (weak, nonatomic) IBOutlet UILabel *lbStatus;

- (IBAction)oprimioBuscar:(id)sender;
- (IBAction)oprimioGuardar:(id)sender;

@end

