//
//  MasterViewController.m
//  protocolosDelgados
//
//  Created by Balbina Santana on 2/17/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Actividad.h"

@interface MasterViewController ()

@property NSMutableArray *actividades;
@property NSIndexPath *actual_row;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Actividad	*uno	=	[[Actividad alloc]	initWithNombre:@"Balbina"];
    Actividad	*dos	=	[[Actividad alloc]	initWithNombre:@"Monica"];
    Actividad	*tres	=	[[Actividad alloc]	initWithNombre:@"Paulina"];
    self.actividades	=	[[NSMutableArray alloc] initWithObjects: uno,dos,tres, nil];
    [self setTitle: @"Alumnos"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Protocol methods

-(void) calificaActividad:(NSInteger)calificacion withComentario:(NSString *)comentario{
    Actividad *uno = self.actividades[self.actual_row.row];
    uno.comentarios = comentario;
    uno.calificacion = calificacion;
    [self.actividades replaceObjectAtIndex:self.actual_row.row withObject:uno];
    [self.tableView reloadData];
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Actividad *object = self.actividades[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
        [[segue destinationViewController] setDelegado:self];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.actividades.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Actividad *object = self.actividades[indexPath.row];
    cell.textLabel.text = object.nombreAlumno;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Calificacion: %ld", (long)object.calificacion];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.actividades removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
