//
//  ViewController.m
//  ejercicioCoreData
//
//  Created by Balbina Santana on 3/26/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)oprimioBuscar:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *contexto = [appDelegate managedObjectContext];
    NSEntityDescription *entidad = [NSEntityDescription entityForName:@"Empleado" inManagedObjectContext:contexto];
    
    //creo un request
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entidad]; //especifico la identidad
    NSPredicate *predicado = [NSPredicate predicateWithFormat:@" (ident = %@)", self.tfId.text];
    [request setPredicate:predicado];//especifico el criterio de busqueda
    
    NSError *error;
    
    //ejecuto rquest
    NSArray *objetosMatch = [contexto executeFetchRequest:request error:&error];
    
    if (objetosMatch.count == 0)
    {
        self.lbStatus.text = @"No hay empleados con ese nombre";
    }
    else
    {
        NSManagedObject *registroMatch = objetosMatch[0];
        self.tfId.text = [[registroMatch valueForKey:@"ident"] stringValue];
        self.tfNombre.text = [registroMatch valueForKey:@"nombre"];
        self.tfSueldo.text = [[registroMatch valueForKey:@"sueldo"] stringValue];
        self.lbStatus.text = @"";
    }
}

- (IBAction)oprimioGuardar:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *contexto = [appDelegate managedObjectContext];
    
    //crea un nuevo registro para la base de datos
    NSManagedObject *nuevoEmp = [NSEntityDescription insertNewObjectForEntityForName:@"Empleado" inManagedObjectContext:contexto];
    
    //coloca los datos al nuevo registro
    NSInteger numeroId = [self.tfId.text integerValue];
    [nuevoEmp setValue: [NSNumber numberWithInt: (int)numeroId] forKey:@"ident"];
    [nuevoEmp setValue: self.tfNombre.text forKey:@"nombre"];
    CGFloat sueldo = [self.tfSueldo.text floatValue];
    [nuevoEmp setValue:[NSNumber numberWithFloat:sueldo] forKey:@"sueldo"];
    
    //pone los campos en blanco
    self.tfId.text = @"";
    self.tfNombre.text = @"";
    self.tfSueldo.text = @"";
    [self.view endEditing: YES]; //quita el teclado
    NSError *error;
    //guarda el contexto a la base de datos
    [contexto save:&error];
    self.lbStatus.text = @"Empleado guardado";
}
@end
