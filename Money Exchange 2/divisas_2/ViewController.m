//
//  ViewController.m
//  divisas_2
//
//  Created by Balbina Santana on 2/22/15.
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

- (IBAction)pressCalculate:(id)sender {
    CGFloat cambio = _tfPesos.text.floatValue;
    CGFloat pesos = _tfPesos.text.doubleValue;
    CGFloat dolares;
    
    if (cambio !=0 && pesos !=0)
    {
        [_tfDolares setText:[NSString stringWithFormat:@"%f", pesos/cambio]];
    }
    else if ([self.tfCambio.text isEqualToString:@""] || [self.tfPesos.text isEqualToString:@""])
    {
        NSString *msg = [[NSString alloc] initWithFormat:@"Please fill in the blanks"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ERROR"
                                                        message:msg delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    
    [self.tfCambio.text isEqualToString:@""];
    [self.tfPesos.text isEqualToString:@""];
    [self.tfCambio.text doubleValue];
    [[NSString alloc] initWithFormat:@"%f", dolares];
    
}

- (void) removeKeyb{
    [self.view endEditing:YES];
}
@end
