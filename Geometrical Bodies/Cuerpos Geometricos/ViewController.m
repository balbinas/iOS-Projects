//
//  ViewController.m
//  Cuerpos Geometricos
//
//  Created by Balbina Santana on 2/5/15.
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

-(IBAction)unwindEsfera:(UIStoryboardSegue *)segue
{
    //no se requiere hacer nada al regresar
}

-(IBAction)unwindPrisma:(UIStoryboardSegue *)segue
{
    //falta completar
}

- (IBAction)presionaInicio:(id)sender
{
    self.imgFormas.image = [UIImage imageNamed:@"CuerposGeometricos.gif"];
    self.linfo.text = [NSString stringWithFormat:@""];
    self.lvolumen.text = [NSString stringWithFormat:@"Volumen: "];
}
@end
