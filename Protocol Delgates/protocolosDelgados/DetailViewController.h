//
//  DetailViewController.h
//  protocolosDelgados
//
//  Created by Balbina Santana on 2/17/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Actividad* detailItem;
@property (weak, nonatomic) IBOutlet UILabel *lbComentario;
@property (weak, nonatomic) IBOutlet UILabel *lbCalificacion;
@property (weak, nonatomic) IBOutlet UILabel *lbAlumno;
@property (nonatomic,weak) id delegado;

@end

