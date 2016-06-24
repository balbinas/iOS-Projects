//
//  ViewController.m
//  ejercicioQuartz
//
//  Created by Balbina Santana on 3/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.vista.swiRect = true;
    self.vista.swiTri = true;
    self.vista.swiCir = true;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cambio:(id)sender {
    if (self.swCir.isOn) {
        self.vista.swiCir = true;
    }
    else{
        self.vista.swiCir = false;
    }
    if (self.swTri.isOn) {
        self.vista.swiTri = true;
    }
    else{
        self.vista.swiTri = false;
    }
    if (self.swRec.isOn) {
        self.vista.swiRect = true;
    }
    else{
        self.vista.swiRect = false;
    }
    [self.vista setNeedsDisplay];
}
@end
