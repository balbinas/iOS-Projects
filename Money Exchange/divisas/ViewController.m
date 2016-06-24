//
//  ViewController.m
//  divisas
//
//  Created by Balbina Santana on 1/15/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [ [UITapGestureRecognizer alloc] initWithTarget: self action: @selector(quitaTeclado)];
    [self.view addGestureRecognizer: tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)oprimioBoton:(id)sender {
    CGFloat dolares;
    CGFloat pesos = _tfPesos.text.doubleValue;
    CGFloat cambio = _tfTipoCambio.text.floatValue;
    //self.tfDolares.text = [ [NSString alloc] initWithFormat:@"%f", dolares];
    if(cambio !=0 && pesos !=0){
        [_tfDolares setText:[NSString stringWithFormat: @"%f", pesos/cambio]];
    }
        else if([self.tfTipoCambio.text isEqualToString:@""] || [self.tfPesos.text isEqualToString:@""]){
            NSString	*mensaje	=	[	[	NSString alloc	]	initWithFormat:	@"LLENA LOS CAMPOS CON *"];
            UIAlertView	*alerta	=	[	[	UIAlertView alloc	]	initWithTitle:	@"ERROR"
                                                                message:	mensaje
                                                               delegate:	self		
                                                      cancelButtonTitle:	@"OK"		
                                                      otherButtonTitles:	nil	];	
            [alerta	show];
        }
    
}

- (void)quitaTeclado{
    //metodo para quitar teclado de tap
    [self.view endEditing:YES];
}

@end
