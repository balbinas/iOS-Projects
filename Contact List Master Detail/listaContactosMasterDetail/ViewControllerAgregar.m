//
//  ViewControllerAgregar.m
//  listaContactosMasterDetail
//
//  Created by Balbina Santana on 2/12/15.
//  Copyright (c) 2015 Balbina Santana. All rights reserved.
//

#import "ViewControllerAgregar.h"

@interface ViewControllerAgregar ()

@end

@implementation ViewControllerAgregar

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)btGuardar:(id)sender {
    if(![self.tfNombre.text isEqualToString:@""])
    {
        NSString *nom = self.tfNombre.text;
        NSString *ofi = self.tfOficina.text;
        NSInteger tel = [self.tfTelefono.text integerValue];
        
        [self.delegado agregaContacto:nom withOficina:ofi withTelefono:tel];
        
        [self.delegado quitaVista];
    }
}
@end
