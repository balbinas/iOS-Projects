//
//  CustomTableViewCell.h
//  EjercicioCeldasMedida
//
//  Created by Balbina Santana on 3/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *tftipo;
@property (weak, nonatomic) IBOutlet UITextField *tfcap;
@property (weak, nonatomic) IBOutlet UITextField *tfcosto;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end
