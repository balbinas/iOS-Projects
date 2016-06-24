//
//  Actividad.h
//  ActividadProtocolosYDelegados
//
//  Created by alumno on 2/16/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actividad : NSObject

@property (strong, nonatomic) NSString *nombreAlumno;
@property (strong, nonatomic) NSString *comentario;
@property NSInteger calificacion;

- (id)initWithNombre: (NSString *) nombre;

@end
