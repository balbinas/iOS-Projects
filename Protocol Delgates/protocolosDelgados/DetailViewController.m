//
//  DetailViewController.m
//  protocolosDelgados
//
//  Created by Balbina Santana on 2/17/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
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
        self.lbAlumno.text = [self.detailItem nombreAlumno];
        self.lbCalificacion.text = [NSString stringWithFormat:@"%ld", (long)[self.detailItem calificacion]];
            self.lbComentario.text = [self.detailItem comentarios];
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
                                    
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"califica"]) {
        [[segue destinationViewController] setDetailItem:self.detailItem];
        [[segue destinationViewController] setDelegado:self.delegado];
    }
}

@end
