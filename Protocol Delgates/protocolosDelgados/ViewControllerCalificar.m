//
//  ViewControllerCalificar.m
//  protocolosDelgados
//
//  Created by Balbina Santana on 2/17/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewControllerCalificar.h"

@interface ViewControllerCalificar ()

@end

@implementation ViewControllerCalificar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lbAlumno.text = self.detailItem.nombreAlumno;
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

- (IBAction)btDone:(id)sender {
    NSInteger cali = [self.tfCalificacion.text integerValue];
    NSString *comentario= self.tvComentario.text;
    [self.delegado calificaActividad:cali withComentario:comentario];
   // [self.delegado quitaVista];
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
