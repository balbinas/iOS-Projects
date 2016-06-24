//
//  PrismaVC.h
//  Cuerpos Geometricos
//
//  Created by Balbina Santana on 2/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrismaVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfLargo;
@property (weak, nonatomic) IBOutlet UITextField *tfAncho;
@property (weak, nonatomic) IBOutlet UITextField *tfAltura;

@property (weak, nonatomic) IBOutlet UIButton *bcancel;
@property (weak, nonatomic) IBOutlet UIButton *bsave;

@property (weak, nonatomic) IBOutlet UIImageView *foto;

@end
