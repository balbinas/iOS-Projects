//
//  ViewController.m
//  datesTime
//
//  Created by Balbina Santana on 1/26/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*miss
    NSDate *fechaHoy;
    NSDateFormatter *formateador = [[NSDateFormatter alloc ]init];
    [formateador setDateStyle:NSDateFormatterShortStyle];
    fechaHoy = [NSDate date];
    NSString *fechaFormateada = [formateador stringFromDate:fechaHoy];
    NSLog(@"%@ EEE ',' d MMM", fechaHoy);
     */
     
    //ejercicio en clase yo
    NSDate *c = [NSDate date];
    
    
    NSDateFormatter  *uno = [[NSDateFormatter alloc]init];
    [uno setDateFormat:@"EEE, d MMM"];
    NSLog(@"%@", [uno stringFromDate:c]);
    
    [uno setDateFormat:@"EEE d MMMM"];
    NSLog(@"%@", [uno stringFromDate:c]);
    
    [uno setDateFormat:@"d/m/YYYY '---' HH:mm:ss"];
    NSLog(@"%@", [uno stringFromDate:c]);
    
    [uno setDateFormat:@"d/MM/YYYY '---' hh:mm:ss a"];
    NSLog(@"%@", [uno stringFromDate:c]);
   
    [uno setDateFormat:@"'despues de las' hh a"];
    NSLog(@"%@", [uno stringFromDate:c]);
    
    [uno setDateFormat:@"'dias transcurridos en el año' DDD"];
    NSLog(@"%@", [uno stringFromDate:c]);
    
    
    [uno setDateFormat:@"'Semana siguiente:' EEE d MMM"];
    NSLog(@"%@", [uno stringFromDate:[c dateByAddingTimeInterval:604800]]);
    
    [uno setDateFormat:@"'Semana anterior:' EEE d MMM"];
    NSLog(@"%@", [uno stringFromDate:[c dateByAddingTimeInterval:-604800]]);
    
    [uno setDateFormat:@"'dia siguiente:' EEE d MMM"];
    NSLog(@"%@", [uno stringFromDate:[c dateByAddingTimeInterval:3600*24]]);
    
    [uno setDateFormat:@"'dia anterior:' EEE d MMM"];
    NSLog(@"%@", [uno stringFromDate:[c dateByAddingTimeInterval:-3600*24]]);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
