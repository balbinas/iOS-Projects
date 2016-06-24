//
//  Actividad.m
//  ActividadProtocolosYDelegados
//
//  Created by alumno on 2/16/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "Actividad.h"

@implementation Actividad

- (id)initWithNombre: (NSString *) nombreAlumno;
{
    self	=	[super	init];
    if	(self)
			 { _nombreAlumno	=	nombreAlumno;
                 _calificacion	=	0;
                 _comentario	=	@"";
             }
    return	self;
}
@end
