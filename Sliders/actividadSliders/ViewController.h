//
//  ViewController.h
//  actividadSliders
//
//  Created by Balbina Santana on 1/19/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *barra1;

@property (weak, nonatomic) IBOutlet UISlider *barra2;
@property (weak, nonatomic) IBOutlet UILabel *nBarra1;
@property (weak, nonatomic) IBOutlet UILabel *nBarra2;

- (IBAction)movioBarra1:(id)sender;

- (IBAction)movioBarra2:(id)sender;

- (IBAction)modificoSwitch:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet UIView *vr1;

@property (weak, nonatomic) IBOutlet UIView *vr2;

@end

