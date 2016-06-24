//
//  ViewController.h
//  QUARTZ
//
//  Created by alumno on 3/12/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUIView.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISwitch *switchRect;
@property (strong, nonatomic) IBOutlet UISwitch *switchCir;
@property (strong, nonatomic) IBOutlet UISwitch *switchTria;
@property (strong, nonatomic) IBOutlet CustomUIView *figuras;
- (IBAction)Switches:(id)sender;


@end

