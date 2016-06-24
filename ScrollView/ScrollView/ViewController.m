//
//  ViewController.m
//  ScrollView
//
//  Created by Balbina Santana on 4/20/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imagen = [[UIImageView alloc] initWithImage:[UIImage imageNamed: @"paisaje1.jpg"]];
    [self.scroller addSubview:imagen];
    [self.scroller setContentSize:imagen.frame.size];
    
    [self.scroller setContentOffset:CGPointMake(imagen.frame.size.width/2, imagen.frame.size.height/2)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
