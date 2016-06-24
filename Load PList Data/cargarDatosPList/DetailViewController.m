//
//  DetailViewController.m
//  cargarDatosPList
//
//  Created by Balbina Santana on 3/2/15.
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
    self.lbTipo.text = [self.detailItem objectForKey:@"tipo"];
    self.lbCap.text = [self.detailItem objectForKey:@"capacidad"];
    self.lbPrecio.text = [[self.detailItem objectForKey:@"precio"] stringValue];
    NSString *stringUrl = [self.detailItem objectForKey:@"urlFoto"];
    NSURL *nsUrl = [NSURL URLWithString:stringUrl];
    NSData *data = [[NSData alloc] initWithContentsOfURL:nsUrl];
    UIImage *imagen = [UIImage imageWithData:data];
    self.img.image = imagen;

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
