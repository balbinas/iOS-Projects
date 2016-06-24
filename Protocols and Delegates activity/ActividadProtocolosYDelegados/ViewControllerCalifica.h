//
//  ViewControllerCalifica.h
//  ActividadProtocolosYDelegados
//
//  Created by alumno on 2/16/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"

@protocol ProtocoloCalificarActividad <NSObject>

- (void) calificaActividad: (NSInteger) calificacion withComentario :(NSString *)
comentario;
-(void) quitaVista;
@end

@interface ViewControllerCalifica : UIViewController
@property (strong, nonatomic) Actividad* detailItem;
@property (strong,nonatomic) id <ProtocoloCalificarActividad> delegado;
@property (weak, nonatomic) IBOutlet UILabel *lblAlumno;
@property (weak, nonatomic) IBOutlet UITextField *tfCalificacion;
@property (weak, nonatomic) IBOutlet UITextView *tvComentario;

- (IBAction)pressDone:(id)sender;


@end
