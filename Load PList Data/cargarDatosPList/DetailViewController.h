//
//  DetailViewController.h
//  cargarDatosPList
//
//  Created by Balbina Santana on 3/2/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDictionary *detailItem;

@property (weak, nonatomic) IBOutlet UIImageView *img;

@property (weak, nonatomic) IBOutlet UILabel *lbTipo;
@property (weak, nonatomic) IBOutlet UILabel *lbCap;
@property (weak, nonatomic) IBOutlet UILabel *lbPrecio;

@end

