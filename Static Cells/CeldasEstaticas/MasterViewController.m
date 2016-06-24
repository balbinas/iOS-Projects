//
//  MasterViewController.m
//  CeldasEstaticas
//
//  Created by Balbina Santana on 3/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        [[segue destinationViewController] setDetailItem:@"vista1"];
    } else if([[segue identifier] isEqualToString:@"vista2"]) {
        [[segue destinationViewController] setDetailItem:@"vista2"];
    }
}

#pragma mark - Table View

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) TableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

@end
