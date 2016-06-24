//
//  DetailViewController.m
//  listaContactosMasterDetail
//
//  Created by Balbina Santana on 2/12/15.
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
        self.lbNombre.text = [self.detailItem nombre];
        self.lbOficina.text = [self.detailItem oficina];
        self.lbTelefono.text = [NSString stringWithFormat:@"%d", [self.detailItem telefono]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
