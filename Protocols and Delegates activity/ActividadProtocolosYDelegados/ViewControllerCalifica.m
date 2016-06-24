//
//  ViewControllerCalifica.m
//  ActividadProtocolosYDelegados
//
//  Created by alumno on 2/16/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerCalifica.h"

@interface ViewControllerCalifica ()

@end

@implementation ViewControllerCalifica

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle: @"Califica"];
    if (self.detailItem) {
        self.lblAlumno.text = [self.detailItem nombreAlumno];
        self.tfCalificacion.text =  [NSString stringWithFormat:@"%ld", (long)[self.detailItem calificacion]];
        self.tvComentario.text = [self.detailItem comentario];
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pressDone:(id)sender {
    NSInteger grade = [self.tfCalificacion.text integerValue];
    NSString *comentario= self.tvComentario.text;
    
    [self.delegado calificaActividad:grade withComentario:comentario];
    [self.delegado quitaVista];
}
@end
