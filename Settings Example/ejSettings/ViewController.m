//
//  ViewController.m
//  ejSettings
//
//  Created by Balbina Santana on 3/23/15.
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

-(void) actualizaSettings
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.lbNombre.text = [defaults objectForKey: @"nombreUsuario"];
    self.lbSonido.text = [[defaults valueForKey: @"sonido"] stringValue];
    self.lbVol.text = [[defaults valueForKey: @"volumen"] stringValue];
    self.lbExp.text = [defaults objectForKey: @"experiencia"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self actualizaSettings];
    [super viewDidAppear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
