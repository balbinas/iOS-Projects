//
//  MasterViewController.m
//  EjercicioCeldasMedida
//
//  Created by Balbina Santana on 3/5/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"

@interface MasterViewController ()

@property NSArray *ipods;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *pathPList = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];

    self.ipods = [[NSArray alloc] initWithContentsOfFile: pathPList];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ipods.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *object = self.ipods[indexPath.row];
    cell.tftipo.text = [object objectForKey:@"tipo"];
    cell.tfcap.text = [object objectForKey:@"capacidad"];
    cell.tfcosto.text = [[object objectForKey:@"precio"] stringValue];
    NSString *stringUrl = [object objectForKey:@"urlFoto"];
    NSURL *nsUrl = [NSURL URLWithString:stringUrl];
    NSData *data = [[NSData alloc] initWithContentsOfURL:nsUrl];
    UIImage *imagen = [UIImage imageWithData:data];
    cell.img.image = imagen;
    return cell;
}

@end
