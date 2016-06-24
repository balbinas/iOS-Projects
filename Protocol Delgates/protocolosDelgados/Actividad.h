//
//  Actividad.h
//  protocolosDelgados
//
//  Created by Balbina Santana on 2/17/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actividad : NSObject

@property (strong, nonatomic) NSString *nombreAlumno;
@property (strong, nonatomic) NSString *comentarios;
@property NSInteger *calificacion;


- (id) initWithNombre: (NSString*) nom;

@end
