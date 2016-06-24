//
//  DetailViewController.h
//  ActividadProtocolosYDelegados
//
//  Created by alumno on 2/16/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Actividad* detailItem;
@property (weak, nonatomic) IBOutlet UILabel *lblAlumno;
@property (weak, nonatomic) IBOutlet UILabel *lblCalificacion;
@property (weak, nonatomic) IBOutlet UITextView *lblComentario;
@property (nonatomic,weak) id delegado;


@end

