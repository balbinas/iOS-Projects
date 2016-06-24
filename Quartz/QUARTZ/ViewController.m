//
//  ViewController.m
//  QUARTZ
//
//  Created by alumno on 3/12/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.figuras.boolCir = true;
    self.figuras.boolTria = true;
    self.figuras.boolRect = true;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Switches:(id)sender {
    if (self.switchCir.isOn) {
        self.figuras.boolCir = true;
    }
    else{
        self.figuras.boolCir = false;
    }
    if (self.switchTria.isOn) {
        self.figuras.boolTria = true;
    }
    else{
        self.figuras.boolTria = false;
    }
    if (self.switchRect.isOn) {
        self.figuras.boolRect = true;
    }
    else{
        self.figuras.boolRect = false;
    }
    [self.figuras setNeedsDisplay];
}
@end
