//
//  EsferaVC.m
//  Cuerpos Geometricos
//
//  Created by Balbina Santana on 2/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "EsferaVC.h"
#import "ViewController.h"

@interface EsferaVC ()

@end

@implementation EsferaVC

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
        viewIni.linfo.text = [NSString stringWithFormat:@"Radio: %@", self.tfradio.text];
        CGFloat radio = [self.tfradio.text doubleValue];
        CGFloat vol;
        vol = pow(radio,3) * (4.0/3.0) * 3.141;
        viewIni.lvolumen.text = [NSString stringWithFormat: @"Volumen: %0.2f", vol];
        viewIni.imgFormas.image = self.foto.image;
    }
    
    
}


@end
