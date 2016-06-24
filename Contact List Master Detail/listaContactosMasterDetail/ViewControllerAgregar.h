//
//  ViewControllerAgregar.h
//  listaContactosMasterDetail
//
//  Created by Balbina Santana on 2/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProtocoloAgregarContacto <NSObject>

- (void) agregaContacto: (NSString *)nombre withOficina:(NSString *) ofic withTelefono: (NSInteger) tel;
- (void) quitaVista;

@end

@interface ViewControllerAgregar : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfOficina;
@property (weak, nonatomic) IBOutlet UITextField *tfTelefono;

@property(nonatomic, strong) id <ProtocoloAgregarContacto> delegado;

- (IBAction)btGuardar:(id)sender;


@end
