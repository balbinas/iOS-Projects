//
//  ViewControllerInformacion.h
//  Storyboard
//
//  Created by Balbina Santana on 1/29/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerInformacion : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *foto;
@property (weak, nonatomic) IBOutlet UITextField *tfancho;
@property (weak, nonatomic) IBOutlet UITextField *tfaltura;

@property(nonatomic, strong) UIImage *imgfoto;
@property CGFloat ancho;
@property CGFloat altura; //variables sin propiedades

@end
