//
//  FirstViewController.m
//  ejemploPicker
//
//  Created by Balbina Santana on 4/9/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property NSArray *letras;
@property NSArray *num;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _letras = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", @"D", @"E", nil];
    _num = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
    
    _picker.dataSource = self;
    _picker.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *) pickerView: (UIPickerView *)	pickerView titleForRow:
(NSInteger)row forComponent:(NSInteger) component{
    if(component == 0)
    {
        return _letras[row];
    }
        return _num[row];
}

- (NSInteger) numberOfComponentsInPickerView:
(UIPickerView *) pickerView{
    return 2;
}

- (NSInteger) pickerView:(UIPickerView	*) pickerView
 numberOfRowsInComponent: (NSInteger)	component{
    if(component == 0)
    {
        return _letras.count;
    }
    return _num.count;
}

- (void) pickerView: (UIPickerView	*)	pickerView didSelectRow:
(NSInteger)	row inComponent:(NSInteger)	component{
    if(component == 0)
        _lbletra.text = _letras[row];
    else
        _lbnum.text = _num[row];
}

@end
