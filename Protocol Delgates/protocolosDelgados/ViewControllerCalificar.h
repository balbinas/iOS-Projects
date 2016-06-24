//
//  ViewControllerCalificar.h
//  protocolosDelgados
//
//  Created by Balbina Santana on 2/17/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"

@protocol ProtocoloCalificar <NSObject>

- (void) calificaActividad:(NSInteger) calificacion withComentario: (NSString*) comentario;

- (void) quitaVista;
@end

@interface ViewControllerCalificar : UIViewController
@property (strong, nonatomic) Actividad* detailItem;
@property (strong, nonatomic) id <ProtocoloCalificar> delegado;

@property (weak, nonatomic) IBOutlet UILabel *lbAlumno;
@property (weak, nonatomic) IBOutlet UITextField *tfCalificacion;
@property (weak, nonatomic) IBOutlet UITextView *tvComentario;

- (IBAction)btDone:(id)sender;

@end
