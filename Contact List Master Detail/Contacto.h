//
//  Contacto.h
//  listaContactosMasterDetail
//
//  Created by Balbina Santana on 2/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contacto : NSObject

@property(nonatomic,strong) NSString *nombre;
@property(nonatomic,strong) NSString *oficina;
@property NSInteger telefono;

- (id) initWithNombre:(NSString*)nom oficina: (NSString*) ofic telefono: (NSInteger) tel;

@end
