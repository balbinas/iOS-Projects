//
//  Actividad.m
//  protocolosDelgados
//
//  Created by Balbina Santana on 2/17/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "Actividad.h"

@implementation Actividad

- (id) initWithNombre: (NSString*) nombre
{
    self = [super init];
    if (self)
    {
        _nombreAlumno = nombre;
        _calificacion = 0;
        _comentarios = @"";
    }
    return self;
}

@end
