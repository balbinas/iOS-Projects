//
//  MasterViewController.m
//  listaContactosMasterDetail
//
//  Created by Balbina Santana on 2/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Contacto.h"

@interface MasterViewController ()

@property NSMutableArray *listaContactos;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
     */
    
    Contacto *cont1 = [[Contacto alloc]	initWithNombre:@"Juan" oficina:@"Aulas	2-222"	telefono:6457];
    Contacto *cont2	= [[Contacto alloc]	initWithNombre:@"Rosy" oficina:@"Aulas	7-401"	telefono:6482];
    self.listaContactos	= [[NSMutableArray alloc]	initWithObjects: cont1,	cont2,	nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    [self.objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}
 */

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contacto *object = self.listaContactos[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
    else
        if ([[segue identifier] isEqualToString: @"agrega"]) [[segue destinationViewController] setDelegado:self];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listaContactos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Contacto *object = self.listaContactos[indexPath.row];
    cell.textLabel.text = [object nombre];
    return cell;
}

#pragma mark - Métodos de Protocolo Agregar Contacto

- (void) agregaContacto:(NSString *)nombre withOficina:(NSString *)ofic withTelefono:(NSInteger)tel
{
    Contacto *tmp = [[Contacto alloc] initWithNombre:nombre oficina:ofic telefono:tel];
    [self.listaContactos addObject: tmp];
    [self.tableView reloadData];
}

- (void) quitaVista
{
    [self.navigationController popViewControllerAnimated:YES];
}




/*
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.listaContactos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}
 */

@end
