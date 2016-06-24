//
//  ViewController.h
//  Cuerpos Geometricos
//
//  Created by Balbina Santana on 2/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgFormas;
@property (weak, nonatomic) IBOutlet UILabel *linfo;
@property (weak, nonatomic) IBOutlet UILabel *lvolumen;

@property (weak, nonatomic) IBOutlet UIButton *binicio;
@property (weak, nonatomic) IBOutlet UIButton *besfera;
@property (weak, nonatomic) IBOutlet UIButton *bprisma;

- (IBAction)presionaInicio:(id)sender;

@end

