//
//  SecondViewController.m
//  ejemploPicker
//
//  Created by Balbina Santana on 4/9/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)seleccionFecha:(id)sender {
    UIDatePicker *fecha = (UIDatePicker *) sender;
    NSDateFormatter *date = [[NSDateFormatter alloc] init];
    [date setDateStyle: NSDateFormatterLongStyle];
    _lbfecha.text = [date stringFromDate: fecha.date];
}
@end
