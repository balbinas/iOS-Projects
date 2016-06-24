//
//  ViewController.m
//  actividadSliders
//
//  Created by Balbina Santana on 1/19/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)movioBarra1:(id)sender {
    CGFloat num = _barra1.value;
    [_nBarra1 setText:[NSString stringWithFormat:@"%f", num]];
}

- (IBAction)movioBarra2:(UISlider *)sender {
    CGFloat mueve = sender.value;
    CGFloat width = _vr2.frame.size.width;
    CGFloat origen = mueve*width*0.95;
    [_nBarra2 setFrame:CGRectMake(origen, _nBarra2.frame.origin.y, _nBarra2.frame.size.width, _nBarra2.frame.size.height)];
}

- (IBAction)modificoSwitch:(UISwitch *)sender {
    if(sender.on)
        self.view.backgroundColor = [UIColor yellowColor];
    else
        self.view.backgroundColor = [UIColor blueColor];
    
}
@end
