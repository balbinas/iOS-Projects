//
//  PrismaVC.m
//  Cuerpos Geometricos
//
//  Created by Balbina Santana on 2/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "PrismaVC.h"
#import "ViewController.h"

@interface PrismaVC ()

@end

@implementation PrismaVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *viewIni = [segue destinationViewController];
    
    if (sender == self.bsave)
    {
        viewIni.linfo.text = [NSString stringWithFormat:@"Largo: %@ \n Ancho: %@ Altura: %@", self.tfLargo.text, self.tfAncho.text, self.tfAltura.text];
        CGFloat largo = [self.tfLargo.text doubleValue];
        CGFloat ancho = [self.tfAncho.text doubleValue];
        CGFloat altura = [self.tfAltura.text doubleValue];
        CGFloat vol;
        vol = largo * ancho * altura;
        viewIni.lvolumen.text = [NSString stringWithFormat: @"Volumen: %0.2f", vol];
        viewIni.imgFormas.image = self.foto.image;
    }
    
    
}


@end
