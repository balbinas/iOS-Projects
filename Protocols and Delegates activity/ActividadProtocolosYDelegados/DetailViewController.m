//
//  DetailViewController.m
//  ActividadProtocolosYDelegados
//
//  Created by alumno on 2/16/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        // Update the view.
        [self configureView];
    }
    
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.lblAlumno.text = [self.detailItem nombreAlumno];
        self.lblCalificacion.text =  [NSString stringWithFormat:@"%ld", (long)[self.detailItem calificacion]];
        self.lblComentario.text = [self.detailItem comentario];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"califica"]) {
        [[segue destinationViewController] setDetailItem:self.detailItem];
        [[segue destinationViewController] setDelegado:self.delegado];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setTitle: @"Calificar"];
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
