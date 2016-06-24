//
//  DetailViewController.h
//  listaContactosMasterDetail
//
//  Created by Balbina Santana on 2/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contacto.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Contacto *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *lbNombre;
@property (weak, nonatomic) IBOutlet UILabel *lbOficina;
@property (weak, nonatomic) IBOutlet UILabel *lbTelefono;

@end

