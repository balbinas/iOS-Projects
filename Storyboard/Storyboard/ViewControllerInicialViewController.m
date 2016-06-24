//
//  ViewControllerInicialViewController.m
//  Storyboard
//
//  Created by Balbina Santana on 1/29/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewControllerInicialViewController.h"
#import "ViewControllerInformacion.h"
#import "ViewControllerEditar.h"

@interface ViewControllerInicialViewController ()

@end

@implementation ViewControllerInicialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tfnombre.text = self.nombre;
    self.tfemail.text = self.email;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindInformacion:(UIStoryboardSegue *)segue
{
    //no se requiere hacer nada al regresar
}

-(IBAction)unwindEditar:(UIStoryboardSegue *)segue
{
    //falta completar
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"info"])
    {
        ViewControllerInformacion *viewInfo = [segue destinationViewController];
        viewInfo.imgfoto = self.foto.image;
        viewInfo.ancho = self.foto.image.size.width;
        viewInfo.altura = self.foto.image.size.height;
    }
    else{
        ViewControllerEditar *viewEditar = [segue destinationViewController];
        
        viewEditar.nombre = self.tfnombre.text;
        viewEditar.email = self.tfemail.text;
    }
}


@end
